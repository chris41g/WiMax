.class Lcom/android/server/WimaxService$6;
.super Landroid/content/BroadcastReceiver;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method constructor <init>(Lcom/android/server/WimaxService;)V
    .registers 2
    .parameter

    .prologue
    .line 1124
    iput-object p1, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v11, 0xd

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 1130
    iget-object v5, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v5}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "WimaxService"

    const-string v6, "ACTION_SCREEN_ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_21
    iget-object v5, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v5}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    .line 1132
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkState()Z

    .line 1333
    :cond_2d
    :goto_2d
    return-void

    .line 1134
    :cond_2e
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 1135
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_45

    const-string v4, "WimaxService"

    const-string v6, "ACTION_SCREEN_OFF"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_45
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto :goto_2d

    .line 1145
    :cond_4f
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v6, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1146
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_6b

    const-string v4, "WimaxService"

    const-string v5, "-----------ACTION_WIMAX_DHCP_RENEW------------"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_6b
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-static {}, Lcom/android/server/WimaxService;->access$800()Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    #calls: Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V
    invoke-static {v4, v5}, Lcom/android/server/WimaxService;->access$900(Lcom/android/server/WimaxService;Landroid/os/PowerManager$WakeLock;)V

    .line 1148
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyIpRenew()V

    goto :goto_2d

    .line 1150
    :cond_7e
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25c

    .line 1151
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_95

    const-string v6, "WimaxService"

    const-string v7, "ACTION_BATTERY_CHANGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    :cond_95
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1154
    .local v2, nPluggedType:I
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_e9

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[nPluggedType] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " getWimaxMode() :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v8}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " m_nPluggedType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v8}, Lcom/android/server/WimaxService;->access$1000(Lcom/android/server/WimaxService;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mbUSBTethered : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/server/WimaxService;->access$1100()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :cond_e9
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$1000(Lcom/android/server/WimaxService;)I

    move-result v6

    if-eq v6, v9, :cond_1a4

    if-ne v2, v9, :cond_1a4

    .line 1157
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v4, v2}, Lcom/android/server/WimaxService;->access$1002(Lcom/android/server/WimaxService;I)I

    .line 1158
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_107

    const-string v4, "WimaxService"

    const-string v6, "ACTION_BATTERY_CHANGED : USB CABLE IS PLUGGED"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :cond_107
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v5, :cond_120

    .line 1160
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WimaxService"

    const-string v5, "discard - already tethered mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1162
    :cond_120
    invoke-static {}, Lcom/android/server/WimaxService;->access$1100()Z

    move-result v4

    if-eqz v4, :cond_2d

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v4

    if-ne v4, v10, :cond_2d

    .line 1163
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v5, v5}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1164
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1165
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v6, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v6, :cond_15c

    .line 1166
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_155

    const-string v4, "WimaxService"

    const-string v6, "it will connect as tethered mode"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_155
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v5}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_2d

    .line 1168
    :cond_15c
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_18e

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_18e

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_18e

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_18e

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_2d

    .line 1173
    :cond_18e
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_19d

    const-string v4, "WimaxService"

    const-string v5, "it will disconnect for re-connecting as tethered mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :cond_19d
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_2d

    .line 1178
    :cond_1a4
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$1000(Lcom/android/server/WimaxService;)I

    move-result v6

    if-ne v6, v9, :cond_2d

    if-eq v2, v9, :cond_2d

    .line 1179
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #setter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v6, v2}, Lcom/android/server/WimaxService;->access$1002(Lcom/android/server/WimaxService;I)I

    .line 1180
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_1c2

    const-string v6, "WimaxService"

    const-string v7, "ACTION_BATTERY_CHANGED : USB CABLE IS UNPLUGGED"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_1c2
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$1102(Z)Z

    .line 1182
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    if-ne v6, v5, :cond_24b

    .line 1183
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    if-ne v6, v10, :cond_2d

    .line 1184
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1185
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1186
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v6, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v6, :cond_203

    .line 1187
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    const-string v4, "WimaxService"

    const-string v6, "it will connect as normal mode"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_1fc
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v5}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_2d

    .line 1189
    :cond_203
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_235

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_235

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_235

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_235

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_2d

    .line 1194
    :cond_235
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_244

    const-string v4, "WimaxService"

    const-string v5, "it will disconnect for re-connecting as normal mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_244
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_2d

    .line 1199
    :cond_24b
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WimaxService"

    const-string v5, "discard - already NOT tethered mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1204
    .end local v2           #nPluggedType:I
    :cond_25c
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33a

    .line 1205
    const-string v6, "wifi_state"

    const/16 v7, 0xe

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1206
    .local v1, nApState:I
    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WIFI_AP_STATE_CHANGED_ACTION = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    packed-switch v1, :pswitch_data_51c

    .line 1223
    :pswitch_287
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WimaxService"

    const-string v5, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1211
    :pswitch_298
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    if-eq v6, v9, :cond_2d3

    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2d3

    .line 1212
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WimaxService"

    const-string v5, "discard - WIFI_AP_STATE_CHANGED_ACTION intent."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1217
    :pswitch_2ba
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    if-ne v6, v5, :cond_2d3

    .line 1218
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WimaxService"

    const-string v5, "discard - WIFI_AP_STATE_CHANGED_ACTION intent. current mode is wimax tethered."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1228
    :cond_2d3
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    if-ne v1, v11, :cond_2d8

    move v4, v5

    :cond_2d8
    invoke-virtual {v6, v9, v4}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1229
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v4

    if-ne v4, v10, :cond_30c

    .line 1230
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1231
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v6, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v6, :cond_313

    .line 1232
    if-ne v1, v11, :cond_30c

    .line 1233
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_307

    const-string v4, "WimaxService"

    const-string v6, "it will be start scan to connect as backhaul mode"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_307
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v5}, Lcom/android/server/WimaxService;->startScan(Z)Z

    .line 1332
    .end local v1           #nApState:I
    :cond_30c
    :goto_30c
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->updateWimaxStatus()V
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$500(Lcom/android/server/WimaxService;)V

    goto/16 :goto_2d

    .line 1237
    .restart local v1       #nApState:I
    :cond_313
    if-ne v1, v11, :cond_324

    .line 1238
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_32a

    const-string v4, "WimaxService"

    const-string v5, "it will be disconnect to re-connect as backhaul mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_324
    :goto_324
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto :goto_30c

    .line 1240
    :cond_32a
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_324

    const-string v4, "WimaxService"

    const-string v5, "it will be disconnect to re-connect as normal mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_324

    .line 1245
    .end local v1           #nApState:I
    :cond_33a
    const-string v6, "com.android.settings.TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4dd

    .line 1246
    const-string v6, "tethering"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1247
    .local v3, usbTethered:Z
    invoke-static {}, Lcom/android/server/WimaxService;->access$1100()Z

    move-result v6

    if-eq v6, v3, :cond_2d

    .line 1250
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_35d

    const-string v6, "WimaxService"

    const-string v7, "TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_35d
    invoke-static {v3}, Lcom/android/server/WimaxService;->access$1102(Z)Z

    .line 1252
    invoke-virtual {p1, p2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 1254
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_383

    const-string v6, "WimaxService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "usbTethered = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    :cond_383
    invoke-static {}, Lcom/android/server/WimaxService;->access$1100()Z

    move-result v6

    if-eqz v6, :cond_437

    .line 1257
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_398

    const-string v4, "WimaxService"

    const-string v6, "Tethering option is checked"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    :cond_398
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v4

    if-ne v4, v5, :cond_3b1

    .line 1259
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WimaxService"

    const-string v5, "discard - already tethered mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1261
    :cond_3b1
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_nPluggedType:I
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$1000(Lcom/android/server/WimaxService;)I

    move-result v4

    if-ne v4, v9, :cond_2d

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v4

    if-ne v4, v10, :cond_2d

    .line 1262
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v5, v5}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1263
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1264
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v6, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v6, :cond_3ef

    .line 1265
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_3e8

    const-string v4, "WimaxService"

    const-string v6, "it will connect as tethered mode"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :cond_3e8
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v5}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_2d

    .line 1267
    :cond_3ef
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_421

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_421

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_421

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_421

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_2d

    .line 1272
    :cond_421
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_430

    const-string v4, "WimaxService"

    const-string v5, "it will disconnect for re-connecting as tethered mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_430
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_2d

    .line 1278
    :cond_437
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_446

    const-string v6, "WimaxService"

    const-string v7, "Tethering option is unchecked"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_446
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    if-ne v6, v5, :cond_4cc

    .line 1280
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    if-ne v6, v10, :cond_2d

    .line 1281
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1282
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 1283
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v6, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v6, :cond_484

    .line 1284
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_47d

    const-string v4, "WimaxService"

    const-string v6, "it will connect as normal mode"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_47d
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v5}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto/16 :goto_2d

    .line 1286
    :cond_484
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_4b6

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_4b6

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_4b6

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_4b6

    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_2d

    .line 1291
    :cond_4b6
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_4c5

    const-string v4, "WimaxService"

    const-string v5, "it will disconnect for re-connecting as normal mode"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_4c5
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    goto/16 :goto_2d

    .line 1296
    :cond_4cc
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WimaxService"

    const-string v5, "discard - already NOT tethered mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 1319
    .end local v3           #usbTethered:Z
    :cond_4dd
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 1320
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v6}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v6

    if-eqz v6, :cond_4f4

    const-string v6, "WimaxService"

    const-string v7, "@@@@@ ACTION_SHUTDOWN @@@@@"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    :cond_4f4
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    if-eq v6, v10, :cond_504

    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v6

    if-ne v6, v9, :cond_30c

    .line 1322
    :cond_504
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v6

    if-ne v6, v5, :cond_511

    .line 1323
    iget-object v6, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 1325
    :cond_511
    iget-object v4, p0, Lcom/android/server/WimaxService$6;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    goto/16 :goto_2d

    .line 1208
    :pswitch_data_51c
    .packed-switch 0xb
        :pswitch_298
        :pswitch_287
        :pswitch_2ba
        :pswitch_298
    .end packed-switch
.end method
