.class public Landroid/net/fourG/wimax/Wimax4GManager;
.super Landroid/net/fourG/net4GManager;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/Wimax4GManager$1;,
        Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;,
        Landroid/net/fourG/wimax/Wimax4GManager$Lock;,
        Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;,
        Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    }
.end annotation


# static fields
.field public static final EXTRA_4G_CURRENT_SERVING_BS:Ljava/lang/String; = "newBSID"

.field public static final EXTRA_DATA:Ljava/lang/String; = "android.net.wimax.EXTRA_DATA"

.field public static final EXTRA_LINK_CAPABILITIES:Ljava/lang/String; = "linkCapabilities"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MODE:Ljava/lang/String; = "usbMode"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NEW_FREQUENCY:Ljava/lang/String; = "newFrequency"

.field public static final EXTRA_NEW_SIGNAL_LEVEL:Ljava/lang/String; = "newSignalLevel"

.field public static final EXTRA_NEW_TIME:Ljava/lang/String; = "newTime"

.field public static final EXTRA_THROUGHPUT:Ljava/lang/String; = "android.net.wimax.EXTRA_THROUGHPUT"

.field public static final EXTRA_TIME:Ljava/lang/String; = "android.net.wimax.EXTRA_TIME"

.field public static final EXTRA_WIMAX_AUTH_ERROR:Ljava/lang/String; = "auth_error"

.field public static final EXTRA_WIMAX_DHCP_TIME:Ljava/lang/String; = "newDHCPTime"

.field public static final EXTRA_WIMAX_MRU_LIST:Ljava/lang/String; = "MruList"

.field public static final EXTRA_WIMAX_MRU_UPDATE_ERRORVALUE:Ljava/lang/String; = "ErrorValue"

.field public static final EXTRA_WIMAX_MRU_UPDATE_SUBTYPE:Ljava/lang/String; = "subType"

.field public static final EXTRA_WIMAX_OMADM_RESP_DATA:Ljava/lang/String; = "WimaxOMADMRespData"

.field public static final EXTRA_WIMAX_OMADM_RESP_STATE:Ljava/lang/String; = "WimaxOMADMRespState"

.field public static final EXTRA_WIMAX_RADIO_INFO:Ljava/lang/String; = "WimaxRadioInfo"

.field public static final EXTRA_WIMAX_WORK_MODE:Ljava/lang/String; = "WimaxWorkMode"

.field public static final FREQUENCY_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.FREQUENCY_CHANGED"

.field public static final MODE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.MODE_CHANGED"

.field public static final NETWORK_IP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.NETWORK_IP_CHANGED"

.field public static final NETWORK_PRIVATE:I = 0x1

.field public static final NETWORK_SPRINT:I = 0x0

.field public static final NET_4G_HANDOVER_COMPLETE_ACTION:Ljava/lang/String; = "android.net.wimax.NET_4G_HANDOVER_COMPLETE_ACTION"

.field public static final SIGNAL_LEVEL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.SIGNAL_LEVEL_CHANGED"

.field private static final TAG:Ljava/lang/String; = "Wimax4GManager"

.field public static final TIME_CHANGED_ACTION:Ljava/lang/String; = "android.net.wimax.TIME_CHANGED"

.field public static final WIMAX_AUTH_ERROR:Ljava/lang/String; = "android.net.wimax.WIMAX_AUTH_ERROR"

.field public static final WIMAX_DATA_THROUGHPUT_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_DATA_THROUGHPUT"

.field public static final WIMAX_DHCP_TIME_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_DHCP_TIME"

.field public static final WIMAX_FACTORY_DEFAULT_ALL:I = 0x2

.field public static final WIMAX_FACTORY_DEFAULT_GDB:I = 0x0

.field public static final WIMAX_FACTORY_DEFAULT_ODB:I = 0x1

.field public static final WIMAX_IDLE_WHILE_AP_SLEEP:I = 0x1

.field public static final WIMAX_MODE_BACKHAUL:I = 0x2

.field public static final WIMAX_MODE_DM_BACKHAUL:I = 0x4

.field public static final WIMAX_MODE_DM_NORMAL:I = 0x3

.field public static final WIMAX_MODE_NORMAL:I = 0x0

.field public static final WIMAX_MODE_TETHERED:I = 0x1

.field public static final WIMAX_RESPONSE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_RESPONSE"

.field public static final WIMAX_SERVICE:Ljava/lang/String; = "WiMax"

.field public static final WIMAX_VI_WHILE_AP_SLEEP:I = 0x0

.field public static final WIMAX_WORK_MODE_ACTION:Ljava/lang/String; = "android.net.wimax.WIMAX_WORK_MODE"

.field public static final WORK_MODE_STATE_0:I = 0x0

.field public static final WORK_MODE_STATE_1:I = 0x1

.field public static final WORK_MODE_STATE_2:I = 0x2

.field public static final WORK_MODE_STATE_3:I = 0x3

.field protected static instance:Landroid/net/fourG/wimax/Wimax4GManager;

.field protected static mHandler:Landroid/os/Handler;

.field protected static mService:Landroid/net/fourG/wimax/IWimax4GManager;

.field public static m_bLog:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/net/fourG/net4GManager;-><init>()V

    .line 234
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    if-nez v1, :cond_13

    .line 236
    const-string v1, "WiMax"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 237
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/fourG/wimax/IWimax4GManager;

    move-result-object v1

    sput-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    .line 239
    .end local v0           #b:Landroid/os/IBinder;
    :cond_13
    return-void
.end method

.method public constructor <init>(Landroid/net/fourG/wimax/IWimax4GManager;Landroid/os/Handler;)V
    .registers 3
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/net/fourG/net4GManager;-><init>()V

    .line 262
    sput-object p1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    .line 263
    sput-object p2, Landroid/net/fourG/wimax/Wimax4GManager;->mHandler:Landroid/os/Handler;

    .line 264
    sput-object p0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 265
    return-void
.end method

.method private static CheckRSSILevel(I)I
    .registers 5
    .parameter "nRSSI"

    .prologue
    const/4 v0, 0x3

    const/16 v3, -0x3c

    const/16 v2, -0x4b

    const/16 v1, -0x5d

    .line 579
    if-ge p0, v1, :cond_b

    .line 580
    const/4 v0, 0x0

    .line 588
    :cond_a
    :goto_a
    return v0

    .line 581
    :cond_b
    if-gt v1, p0, :cond_11

    if-ge p0, v2, :cond_11

    .line 582
    const/4 v0, 0x1

    goto :goto_a

    .line 583
    :cond_11
    if-gt v2, p0, :cond_17

    if-ge p0, v3, :cond_17

    .line 584
    const/4 v0, 0x2

    goto :goto_a

    .line 585
    :cond_17
    if-gt v3, p0, :cond_a

    goto :goto_a
.end method

.method static synthetic access$000(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$108(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$210(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$310(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$708(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$810(Landroid/net/fourG/wimax/Wimax4GManager;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I

    return v0
.end method

.method public static calculateSignalLevel(II)I
    .registers 3
    .parameter "rssi"
    .parameter "numLevels"

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->calculateSignalLevel(III)I

    move-result v0

    return v0
.end method

.method public static calculateSignalLevel(III)I
    .registers 5
    .parameter "nRSSI"
    .parameter "nCINR"
    .parameter "numLevels"

    .prologue
    .line 570
    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    .line 571
    const/4 v0, -0x1

    .line 575
    :goto_4
    return v0

    .line 572
    :cond_5
    const/4 v0, 0x0

    .line 574
    .local v0, dwRssiStep:I
    invoke-static {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->CheckRSSILevel(I)I

    move-result v0

    .line 575
    goto :goto_4
.end method

.method public static declared-synchronized getInstance()Landroid/net/fourG/wimax/Wimax4GManager;
    .registers 2

    .prologue
    .line 242
    const-class v1, Landroid/net/fourG/wimax/Wimax4GManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;

    if-nez v0, :cond_e

    .line 244
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GManager;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 248
    :cond_e
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->instance:Landroid/net/fourG/wimax/Wimax4GManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 242
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public OdbAddReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 726
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbAddReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 728
    :goto_6
    return v1

    .line 727
    :catch_7
    move-exception v0

    .line 728
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbDeleteReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 734
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbDeleteReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 736
    :goto_6
    return v1

    .line 735
    :catch_7
    move-exception v0

    .line 736
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbReadReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 702
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbReadReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 704
    :goto_6
    return v1

    .line 703
    :catch_7
    move-exception v0

    .line 704
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbUpdateReq()I
    .registers 3

    .prologue
    .line 718
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbUpdateReq()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 720
    :goto_6
    return v1

    .line 719
    :catch_7
    move-exception v0

    .line 720
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public OdbWriteReq([B)I
    .registers 4
    .parameter "tlvDataArray"

    .prologue
    .line 710
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->OdbWriteReq([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 712
    :goto_6
    return v1

    .line 711
    :catch_7
    move-exception v0

    .line 712
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public calWiMAXThroughput(Z)V
    .registers 4
    .parameter "bstart"

    .prologue
    .line 594
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->calWiMAXThroughput(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 598
    :goto_5
    return-void

    .line 595
    :catch_6
    move-exception v0

    .line 596
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public checkUSBstate()Z
    .registers 3

    .prologue
    .line 678
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->checkUSBstate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 680
    :goto_6
    return v1

    .line 679
    :catch_7
    move-exception v0

    .line 680
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "homeNspName"
    .parameter "roamingNspName"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    const/4 v1, -0x1

    .line 601
    const-string v2, ""

    if-eq p2, v2, :cond_6

    .line 608
    :goto_5
    return v1

    .line 606
    :cond_6
    :try_start_6
    sget-object v2, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/fourG/wimax/IWimax4GManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 607
    :catch_d
    move-exception v0

    .line 608
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public connectDefaultNetwork()I
    .registers 5

    .prologue
    const/4 v1, 0x5

    .line 272
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 273
    .local v0, nWimaxEnabledState:I
    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    .line 274
    :cond_b
    sget-boolean v2, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v2, :cond_16

    const-string v2, "Wimax4GManager"

    const-string v3, "[connectDefaultNetwork] already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_16
    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 279
    :goto_19
    return v1

    .line 278
    :cond_1a
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    .line 279
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public createConnectionStatistics()Landroid/net/fourG/net4GManager$ConnectionStatistics;
    .registers 3

    .prologue
    .line 339
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->createConnectionStatistics()Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 341
    :goto_6
    return-object v1

    .line 340
    :catch_7
    move-exception v0

    .line 341
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic createLock(ILjava/lang/String;)Landroid/net/fourG/net4GManager$Lock;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/net/fourG/wimax/Wimax4GManager;->createLock(ILjava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createLock(Ljava/lang/String;)Landroid/net/fourG/net4GManager$Lock;
    .registers 3
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->createLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    move-result-object v0

    return-object v0
.end method

.method public createLock(ILjava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;
    .registers 5
    .parameter "lockType"
    .parameter "tag"

    .prologue
    .line 1279
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/fourG/wimax/Wimax4GManager$Lock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;ILjava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V

    return-object v0
.end method

.method public createLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$Lock;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1295
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$Lock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/fourG/wimax/Wimax4GManager$Lock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;ILjava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V

    return-object v0
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    .registers 4
    .parameter "tag"

    .prologue
    .line 1312
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;Ljava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V

    return-object v0
.end method

.method public deleteStaticIP()I
    .registers 3

    .prologue
    .line 795
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->deleteStaticIP()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 797
    :goto_6
    return v1

    .line 796
    :catch_7
    move-exception v0

    .line 797
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public disconnect()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 291
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v1

    .line 292
    .local v1, nWimaxEnabledState:I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_b

    const/4 v3, 0x2

    if-ne v1, v3, :cond_11

    .line 294
    :cond_b
    :try_start_b
    sget-object v3, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v3}, Landroid/net/fourG/wimax/IWimax4GManager;->disconnect()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v2

    .line 299
    :cond_11
    :goto_11
    return v2

    .line 295
    :catch_12
    move-exception v0

    .line 296
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_11
.end method

.method public enableLog(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1475
    sput-boolean p1, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    .line 1476
    return-void
.end method

.method public enableLogLevel(I)V
    .registers 3
    .parameter "nLoglevel"

    .prologue
    .line 553
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->enableLogLevel(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 556
    :goto_5
    return-void

    .line 554
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public get4GState()I
    .registers 3

    .prologue
    .line 511
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->get4GState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 513
    :goto_6
    return v1

    .line 512
    :catch_7
    move-exception v0

    .line 513
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_6
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getAvailableNetworks()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 547
    :goto_6
    return-object v1

    .line 546
    :catch_7
    move-exception v0

    .line 547
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 3

    .prologue
    .line 686
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 688
    :goto_6
    return-object v1

    .line 687
    :catch_7
    move-exception v0

    .line 688
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getConnectionInfo()Landroid/net/fourG/net4GInfo;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 3

    .prologue
    .line 330
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 332
    :goto_6
    return-object v1

    .line 331
    :catch_7
    move-exception v0

    .line 332
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public bridge synthetic getDeviceInformation()Landroid/net/fourG/net4GDeviceInfo;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .registers 3

    .prologue
    .line 351
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 353
    :goto_6
    return-object v1

    .line 352
    :catch_7
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 3

    .prologue
    .line 364
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 366
    :goto_6
    return-object v1

    .line 365
    :catch_7
    move-exception v0

    .line 366
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getMruList()V
    .registers 3

    .prologue
    .line 438
    sget-boolean v0, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "getMruList"

    const-string v1, "getMruList entered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_b
    :try_start_b
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruList()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 444
    :goto_10
    return-void

    .line 441
    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public getMruListRsp()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    sget-boolean v1, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v1, :cond_b

    const-string v1, "getMruListRsp"

    const-string v2, "getMruListRsp entered"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_b
    :try_start_b
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruListRsp()Ljava/util/List;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result-object v1

    .line 451
    :goto_11
    return-object v1

    .line 450
    :catch_12
    move-exception v0

    .line 451
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public getMruUpdate(Ljava/util/List;I)Z
    .registers 15
    .parameter
    .parameter "nSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/MruList;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/MruList;>;"
    const/4 v8, 0x0

    .line 456
    sget-boolean v9, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v9, :cond_1d

    const-string v9, "getMruUpdate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getMruUpdate nSize : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_1d
    if-nez p2, :cond_28

    .line 459
    :try_start_1f
    sget-object v9, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    const-string v10, ""

    invoke-interface {v9, v10, p2}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruUpdate(Ljava/lang/String;I)Z

    move-result v8

    .line 483
    :cond_27
    :goto_27
    return v8

    .line 461
    :cond_28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 462
    .local v5, nListSize:I
    if-ne p2, v5, :cond_27

    .line 466
    const-string v6, ""

    .line 468
    .local v6, strUpdate:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_31
    if-ge v3, p2, :cond_b5

    .line 469
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/fourG/wimax/MruList;

    .line 471
    .local v7, temp:Landroid/net/fourG/wimax/MruList;
    invoke-virtual {v7}, Landroid/net/fourG/wimax/MruList;->getCenterfrequency()I

    move-result v4

    .line 472
    .local v4, nCF:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 473
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {v7}, Landroid/net/fourG/wimax/MruList;->getBW()B

    move-result v0

    .line 475
    .local v0, bw:B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 476
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 477
    invoke-virtual {v7}, Landroid/net/fourG/wimax/MruList;->getFFTSize()B

    move-result v2

    .line 478
    .local v2, fft:B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 479
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "#@"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 468
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_31

    .line 481
    .end local v0           #bw:B
    .end local v2           #fft:B
    .end local v4           #nCF:I
    .end local v7           #temp:Landroid/net/fourG/wimax/MruList;
    :cond_b5
    sget-object v9, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v9, v6, p2}, Landroid/net/fourG/wimax/IWimax4GManager;->getMruUpdate(Ljava/lang/String;I)Z
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_ba} :catch_bd

    move-result v8

    goto/16 :goto_27

    .line 482
    .end local v3           #i:I
    .end local v5           #nListSize:I
    .end local v6           #strUpdate:Ljava/lang/String;
    :catch_bd
    move-exception v1

    .line 483
    .local v1, e:Landroid/os/RemoteException;
    goto/16 :goto_27
.end method

.method public getNeighborList()V
    .registers 2

    .prologue
    .line 399
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0}, Landroid/net/fourG/wimax/IWimax4GManager;->getNeighborList()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 403
    :goto_5
    return-void

    .line 400
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public getNetworkConnectionSetting()I
    .registers 3

    .prologue
    .line 765
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getNetworkConnectionSetting()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 767
    :goto_6
    return v1

    .line 766
    :catch_7
    move-exception v0

    .line 767
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getNetworkEntryCompleteTimes()[I
    .registers 3

    .prologue
    .line 391
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getNetworkEntryCompleteTimes()[I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 393
    :goto_6
    return-object v1

    .line 392
    :catch_7
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getPersistedWimaxEnabled()Z
    .registers 3

    .prologue
    .line 496
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getPersistedWimaxEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 498
    :goto_6
    return v1

    .line 497
    :catch_7
    move-exception v0

    .line 498
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRadioInfo()V
    .registers 3

    .prologue
    .line 415
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getRadioInfoTemperature()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 419
    :goto_5
    return-void

    .line 416
    :catch_6
    move-exception v0

    .line 417
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;
    .registers 3

    .prologue
    .line 407
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getRadioInfoTemperatureResponse()Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 409
    :goto_6
    return-object v1

    .line 408
    :catch_7
    move-exception v0

    .line 409
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWimaxMode()I
    .registers 3

    .prologue
    .line 657
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWimaxMode()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 659
    :goto_6
    return v1

    .line 658
    :catch_7
    move-exception v0

    .line 659
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 3

    .prologue
    .line 529
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 531
    :goto_6
    return-object v1

    .line 530
    :catch_7
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    goto :goto_6
.end method

.method public getWimaxStateDetail()I
    .registers 3

    .prologue
    .line 537
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWimaxStateDetail()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 539
    :goto_6
    return v1

    .line 538
    :catch_7
    move-exception v0

    .line 539
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getWorkModeState()I
    .registers 3

    .prologue
    .line 423
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->getWorkModeState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 425
    :goto_6
    return v1

    .line 424
    :catch_7
    move-exception v0

    .line 425
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public is4GEnabled()Z
    .registers 3

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isRoamingEnabled()Z
    .registers 3

    .prologue
    .line 622
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->isRoamingEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 624
    :goto_6
    return v1

    .line 623
    :catch_7
    move-exception v0

    .line 624
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public makeOdbTlvData([BIIII[B)I
    .registers 15
    .parameter "pBuffer"
    .parameter "nBufferIndex"
    .parameter "wBufferLen"
    .parameter "wTag"
    .parameter "wLength"
    .parameter "pbValue"

    .prologue
    .line 694
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/fourG/wimax/IWimax4GManager;->makeOdbTlvData([BIIII[B)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v0

    .line 696
    :goto_c
    return v0

    .line 695
    :catch_d
    move-exception v7

    .line 696
    .local v7, e:Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public readStaticIP(I)Ljava/lang/String;
    .registers 4
    .parameter "nIndex"

    .prologue
    .line 787
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->readStaticIP(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 789
    :goto_6
    return-object v1

    .line 788
    :catch_7
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "error"

    goto :goto_6
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    .line 305
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->reassociate()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 307
    :goto_6
    return v1

    .line 306
    :catch_7
    move-exception v0

    .line 307
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public reconnect()Z
    .registers 3

    .prologue
    .line 317
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->reconnect()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 319
    :goto_6
    return v1

    .line 318
    :catch_7
    move-exception v0

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public release_sWakeLock()V
    .registers 2

    .prologue
    .line 645
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0}, Landroid/net/fourG/wimax/IWimax4GManager;->release_sWakeLock()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 648
    :goto_5
    return-void

    .line 646
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .parameter "ip"
    .parameter "gateway"
    .parameter "netmask"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 776
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/net/fourG/wimax/IWimax4GManager;->saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 778
    :goto_b
    return v0

    .line 777
    :catch_c
    move-exception v6

    .line 778
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, -0x1

    goto :goto_b
.end method

.method public set4GEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 378
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->set4GEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 380
    :goto_6
    return v1

    .line 379
    :catch_7
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setFactoryDefault(I)Z
    .registers 4
    .parameter "nType"

    .prologue
    .line 742
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setFactoryDefault(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 744
    :goto_6
    return v1

    .line 743
    :catch_7
    move-exception v0

    .line 744
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setMruWorking(Z)V
    .registers 3
    .parameter "bWorking"

    .prologue
    .line 489
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setMruWorking(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 492
    :goto_5
    return-void

    .line 490
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setRoamingEnabled(Z)Z
    .registers 4
    .parameter "enabled"

    .prologue
    .line 614
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setRoamingEnabled(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 616
    :goto_6
    return v1

    .line 615
    :catch_7
    move-exception v0

    .line 616
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setVirtualIdleWhileAPsleep(B)I
    .registers 4
    .parameter "bMode"

    .prologue
    .line 752
    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 754
    :cond_5
    :try_start_5
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setVirtualIdleWhileAPsleep(B)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 759
    :goto_b
    return v1

    .line 755
    :catch_c
    move-exception v0

    .line 756
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_b

    .line 759
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_f
    const/4 v1, -0x2

    goto :goto_b
.end method

.method public setWimax4GState(I)V
    .registers 3
    .parameter "nWimax4GState"

    .prologue
    .line 519
    :try_start_0
    sget-object v0, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v0, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setWimaxStatus(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 522
    :goto_5
    return-void

    .line 520
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setWimaxMode(IZ)I
    .registers 5
    .parameter "nMode"
    .parameter "enable"

    .prologue
    .line 670
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1, p2}, Landroid/net/fourG/wimax/IWimax4GManager;->setWimaxMode(IZ)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 672
    :goto_6
    return v1

    .line 671
    :catch_7
    move-exception v0

    .line 672
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public setWorkModeState(I)Z
    .registers 4
    .parameter "workMode"

    .prologue
    .line 431
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->setWorkModeState(I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 433
    :goto_6
    return v1

    .line 432
    :catch_7
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public startScan()Z
    .registers 2

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan(Z)Z

    move-result v0

    return v0
.end method

.method public startScan(Z)Z
    .registers 4
    .parameter "bUserReq"

    .prologue
    .line 637
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1, p1}, Landroid/net/fourG/wimax/IWimax4GManager;->startScan(Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 639
    :goto_6
    return v1

    .line 638
    :catch_7
    move-exception v0

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method
