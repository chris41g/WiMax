.class Lcom/android/server/WimaxService$WimaxHandler;
.super Landroid/os/Handler;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WimaxService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WimaxHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WimaxService;


# direct methods
.method public constructor <init>(Lcom/android/server/WimaxService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 1411
    iput-object p1, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    .line 1412
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1413
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1417
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v2}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v2, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+ Received "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    :cond_22
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_a6

    .line 1444
    :goto_27
    :pswitch_27
    return-void

    .line 1420
    :pswitch_28
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    iget-object v3, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #calls: Lcom/android/server/WimaxService;->getEnableLog()Z
    invoke-static {v3}, Lcom/android/server/WimaxService;->access$1200(Lcom/android/server/WimaxService;)Z

    move-result v3

    #setter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v2, v3}, Lcom/android/server/WimaxService;->access$302(Lcom/android/server/WimaxService;Z)Z

    .line 1421
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v2}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v3}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->setEnableLog(Z)V

    .line 1422
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v2}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v2

    if-eqz v2, :cond_51

    const-string v2, "WimaxService"

    const-string v3, "MESSAGE_ENABLE_WIMAX >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_51
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_58

    move v0, v1

    :cond_58
    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z
    invoke-static {v2, v1, v0, v3}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;ZZI)Z

    goto :goto_27

    .line 1428
    :pswitch_5e
    iget-object v2, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_6f

    :goto_64
    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/WimaxService;->access$700(Lcom/android/server/WimaxService;ZZI)Z

    .line 1429
    iget-object v0, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v0}, Lcom/android/server/WimaxService;->release_sWakeLock()V

    goto :goto_27

    :cond_6f
    move v1, v0

    .line 1428
    goto :goto_64

    .line 1432
    :pswitch_71
    iget-object v0, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    goto :goto_27

    .line 1436
    :pswitch_7b
    invoke-static {}, Lcom/android/server/WimaxService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    monitor-enter v1

    .line 1437
    :try_start_80
    invoke-static {}, Lcom/android/server/WimaxService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1438
    iget-object v0, p0, Lcom/android/server/WimaxService$WimaxHandler;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v0

    if-eqz v0, :cond_99

    const-string v0, "WimaxService"

    const-string v2, "release sDriverStopWakeLock----------------------"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_99
    invoke-static {}, Lcom/android/server/WimaxService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1441
    :cond_a0
    monitor-exit v1

    goto :goto_27

    :catchall_a2
    move-exception v0

    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_80 .. :try_end_a4} :catchall_a2

    throw v0

    .line 1418
    nop

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_28
        :pswitch_5e
        :pswitch_71
        :pswitch_27
        :pswitch_7b
    .end packed-switch
.end method
