.class public Landroid/net/fourG/wimax/WimaxMonitor;
.super Ljava/lang/Object;
.source "WimaxMonitor.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/WimaxMonitor$1;,
        Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;,
        Landroid/net/fourG/wimax/WimaxMonitor$MonitorThread;
    }
.end annotation


# static fields
.field private static final CONNECTED:I = 0x1

.field private static final DISCONNECTED:I = 0x2

.field private static final DRIVER_STATE:I = 0x7

.field static final EVENT_AUTH_FAIL_MSG:I = 0x3

.field static final EVENT_AUTH_UTC_TIME:I = 0x9

.field static final EVENT_BS_INFO_RESPONSE:I = 0xa

.field static final EVENT_CARD_PRESENCE:I = 0x1

.field static final EVENT_DEVICE_STATUS:I = 0x0

.field static final EVENT_LINK_WEAK_INFO:I = 0x8

.field static final EVENT_MRU_LIST_MSG:I = 0x4

.field static final EVENT_MRU_UPDATE_MSG:I = 0x5

.field static final EVENT_OMADM_RESPONSE:I = 0x6

.field static final EVENT_POWER_STATE:I = 0x2

.field static final EVENT_RADIO_INFO_RESPONSE:I = 0x7

.field private static final LINK_SPEED:I = 0x5

.field private static final STATE_CHANGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WimaxMonitor"

.field private static final TERMINATING:I = 0x6

.field private static final UNKNOWN:I = 0x8


# instance fields
.field protected mEventHandler:Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;

.field private final mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

.field private m_bLog:Z

.field private oldInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;


# direct methods
.method public constructor <init>(Landroid/net/fourG/wimax/WimaxStateTracker;)V
    .registers 3
    .parameter "tracker"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    .line 76
    new-instance v0, Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;

    invoke-direct {v0, p0, p0}, Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;-><init>(Landroid/net/fourG/wimax/WimaxMonitor;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mEventHandler:Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;

    .line 78
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 79
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 82
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    .line 83
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mEventHandler:Landroid/net/fourG/wimax/WimaxMonitor$EventHandler;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->SetHandler(Landroid/os/Handler;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Landroid/net/fourG/wimax/WimaxMonitor;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    return v0
.end method

.method private handleAuthFail(ILjava/lang/String;)V
    .registers 4
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyAuthFail(ILjava/lang/String;)V

    .line 128
    return-void
.end method

.method private handleBSListMsg(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, bsList:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;>;"
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxBSListBroadcast(Ljava/util/List;)V

    .line 140
    return-void
.end method

.method private handleDeviceStatus(Landroid/net/fourG/wimax/DeviceStatusInfo;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 237
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    if-eqz v3, :cond_1c

    const-string v3, "WimaxMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_1c
    invoke-virtual {p1}, Landroid/net/fourG/wimax/DeviceStatusInfo;->getDeviceStatus()Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    move-result-object v2

    .line 240
    .local v2, status:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    invoke-virtual {p1}, Landroid/net/fourG/wimax/DeviceStatusInfo;->getStatusReason()Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;

    move-result-object v1

    .line 241
    .local v1, reason:Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;
    invoke-virtual {p1}, Landroid/net/fourG/wimax/DeviceStatusInfo;->getConnectionProgressInfo()Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    move-result-object v0

    .line 243
    .local v0, info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;
    sget-object v3, Landroid/net/fourG/wimax/WimaxMonitor$1;->$SwitchMap$android$net$fourG$wimax$DeviceStatusInfo$StatusReason:[I

    invoke-virtual {v1}, Landroid/net/fourG/wimax/DeviceStatusInfo$StatusReason;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_78

    .line 268
    :goto_33
    return-void

    .line 245
    :pswitch_34
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    if-eqz v3, :cond_50

    const-string v3, "WimaxMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "testhere handleDeviceStatus + Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_50
    invoke-direct {p0, v2, v0}, Landroid/net/fourG/wimax/WimaxMonitor;->handleNormalStatus(Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 247
    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 248
    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    goto :goto_33

    .line 251
    :pswitch_58
    sget-object v3, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->UnInitialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v2, v3, :cond_68

    .line 252
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->DISCONNECTED_USB:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 253
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v3, v0}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 254
    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 255
    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    goto :goto_33

    .line 258
    :cond_68
    sget-object v3, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v2, v3, :cond_6e

    .line 259
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 261
    :cond_6e
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v3, v0}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 262
    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 263
    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    goto :goto_33

    .line 243
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_34
        :pswitch_58
    .end packed-switch
.end method

.method private handleDriverEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 143
    if-nez p1, :cond_3

    .line 151
    :cond_2
    :goto_2
    return-void

    .line 146
    :cond_3
    const-string v0, "STOPPED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 147
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStopped()V

    goto :goto_2

    .line 148
    :cond_11
    const-string v0, "STARTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStarted()V

    goto :goto_2
.end method

.method private handleIpRenew()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyIpRenew()V

    .line 124
    return-void
.end method

.method private handleMruListMsg(Ljava/util/List;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, mruList:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/MruList;>;"
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendMruListBroadcast(I)V

    .line 132
    return-void
.end method

.method private handleMruUpdateMsg(II)V
    .registers 4
    .parameter "nSubType"
    .parameter "nErrorValue"

    .prologue
    .line 135
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendMruUpdateBroadcast(II)V

    .line 136
    return-void
.end method

.method private handleNormalStatus(Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 6
    .parameter "status"
    .parameter "info"

    .prologue
    .line 171
    sget-object v0, Landroid/net/fourG/wimax/WimaxMonitor$1;->$SwitchMap$android$net$fourG$wimax$DeviceStatusInfo$DeviceStatus:[I

    invoke-virtual {p1}, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b6

    .line 234
    :cond_b
    :goto_b
    return-void

    .line 176
    :pswitch_c
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->UnInitialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    if-eq v0, v1, :cond_18

    .line 177
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 179
    :cond_18
    const-string v0, "STARTED"

    invoke-direct {p0, v0}, Landroid/net/fourG/wimax/WimaxMonitor;->handleDriverEvent(Ljava/lang/String;)V

    .line 180
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 184
    :pswitch_23
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Initialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    if-eq v0, v1, :cond_b

    .line 185
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->INITIALIZED:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 189
    :pswitch_2f
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Initialized:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v0, v1, :cond_b

    .line 190
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 193
    :pswitch_3b
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->Scanning:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    if-ne v0, v1, :cond_b

    .line 194
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 199
    :pswitch_47
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 202
    :pswitch_4d
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    if-eqz v0, :cond_69

    const-string v0, "WimaxMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNormalStatus:Data_Connected  Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_69
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_73

    .line 204
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 205
    :cond_73
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_83

    .line 206
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v1, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v0, v1, :cond_b

    .line 208
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto :goto_b

    .line 210
    :cond_83
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_Renew:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_8b

    .line 211
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxMonitor;->handleIpRenew()V

    goto :goto_b

    .line 212
    :cond_8b
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->IP_USB:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_96

    .line 213
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto/16 :goto_b

    .line 214
    :cond_96
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Ranging:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne p2, v0, :cond_b

    .line 216
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    goto/16 :goto_b

    .line 220
    :pswitch_a1
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTING:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto/16 :goto_b

    .line 223
    :pswitch_a8
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto/16 :goto_b

    .line 226
    :pswitch_af
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-direct {p0, v0, p2}, Landroid/net/fourG/wimax/WimaxMonitor;->handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    goto/16 :goto_b

    .line 171
    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_c
        :pswitch_23
        :pswitch_2f
        :pswitch_3b
        :pswitch_47
        :pswitch_4d
        :pswitch_a1
        :pswitch_a8
        :pswitch_af
    .end packed-switch
.end method

.method private handleWimaxStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 4
    .parameter "newWimaxState"
    .parameter "newInfo"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 120
    return-void
.end method

.method public static nap(I)V
    .registers 3
    .parameter "secs"

    .prologue
    .line 159
    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    .line 162
    :goto_6
    return-void

    .line 160
    :catch_7
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public getDeviceStatusInfo()Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    return-object v0
.end method

.method public getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .parameter "msg"

    .prologue
    .line 271
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    if-eqz v3, :cond_1c

    const-string v3, "WimaxMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+ Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_1c
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_c6

    .line 321
    :cond_21
    :goto_21
    const/4 v3, 0x0

    return v3

    .line 275
    :pswitch_23
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/fourG/wimax/DeviceStatusInfo;

    invoke-direct {p0, v3}, Landroid/net/fourG/wimax/WimaxMonitor;->handleDeviceStatus(Landroid/net/fourG/wimax/DeviceStatusInfo;)V

    goto :goto_21

    .line 278
    :pswitch_2b
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_21

    .line 279
    const-string v3, "STOPPED"

    invoke-direct {p0, v3}, Landroid/net/fourG/wimax/WimaxMonitor;->handleDriverEvent(Ljava/lang/String;)V

    goto :goto_21

    .line 283
    :pswitch_35
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 284
    sget-object v3, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    goto :goto_21

    .line 288
    :pswitch_3f
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Landroid/net/fourG/wimax/WimaxMonitor;->handleAuthFail(ILjava/lang/String;)V

    goto :goto_21

    .line 291
    :pswitch_49
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/net/fourG/wimax/WimaxMonitor;->handleMruListMsg(Ljava/util/List;)V

    goto :goto_21

    .line 294
    :pswitch_51
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4}, Landroid/net/fourG/wimax/WimaxMonitor;->handleMruUpdateMsg(II)V

    goto :goto_21

    .line 297
    :pswitch_59
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/nio/ByteBuffer;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v3, v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyOMADMResponse(Ljava/nio/ByteBuffer;II)V

    goto :goto_21

    .line 300
    :pswitch_67
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyRadioInfoResponse()V

    goto :goto_21

    .line 303
    :pswitch_6d
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_77

    .line 304
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyLinkWeakInformation()V

    goto :goto_21

    .line 306
    :cond_77
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyMoCallInformation()V

    goto :goto_21

    .line 309
    :pswitch_7d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 310
    .local v1, now:Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyMMddHHmmss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 312
    .local v2, strUTCtime:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    if-eqz v3, :cond_ac

    const-string v3, "UTCTIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_ac
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxNative;->SendUTCTime(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 316
    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    .end local v1           #now:Ljava/util/Date;
    .end local v2           #strUTCtime:Ljava/lang/String;
    :pswitch_b1
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    if-eqz v3, :cond_bc

    const-string v3, "WimaxMonitor"

    const-string v4, " [EVENT_BS_INFO_RESPONSE] "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_bc
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/net/fourG/wimax/WimaxMonitor;->handleBSListMsg(Ljava/util/List;)V

    goto/16 :goto_21

    .line 273
    nop

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
        :pswitch_35
        :pswitch_3f
        :pswitch_49
        :pswitch_51
        :pswitch_59
        :pswitch_67
        :pswitch_6d
        :pswitch_7d
        :pswitch_b1
    .end packed-switch
.end method

.method public resetOldState()V
    .registers 2

    .prologue
    .line 114
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;->RF_OFF_HW_SW:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldState:Landroid/net/fourG/wimax/DeviceStatusInfo$DeviceStatus;

    .line 115
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxMonitor;->oldInfo:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 116
    return-void
.end method

.method public setEnableLog(Z)V
    .registers 2
    .parameter "blog"

    .prologue
    .line 100
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxMonitor;->m_bLog:Z

    .line 101
    return-void
.end method

.method public startMonitoring()V
    .registers 2

    .prologue
    .line 87
    new-instance v0, Landroid/net/fourG/wimax/WimaxMonitor$MonitorThread;

    invoke-direct {v0, p0}, Landroid/net/fourG/wimax/WimaxMonitor$MonitorThread;-><init>(Landroid/net/fourG/wimax/WimaxMonitor;)V

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxMonitor$MonitorThread;->start()V

    .line 88
    return-void
.end method
