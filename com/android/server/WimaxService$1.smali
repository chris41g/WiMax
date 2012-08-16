.class Lcom/android/server/WimaxService$1;
.super Ljava/lang/Object;
.source "WimaxService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/WimaxService;-><init>(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxStateTracker;)V
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
    .line 231
    iput-object p1, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$100(Lcom/android/server/WimaxService;)Lcom/android/server/WimaxService$WimaxHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/WimaxService$WimaxHandler;->removeMessages(I)V

    .line 234
    invoke-static {}, Lcom/android/server/WimaxService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    monitor-enter v1

    .line 235
    :try_start_f
    invoke-static {}, Lcom/android/server/WimaxService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 236
    iget-object v0, p0, Lcom/android/server/WimaxService$1;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v0}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "WimaxService"

    const-string v2, "[setReleaseWakeLockCallback] sDriverStopWakeLock.release()"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_28
    invoke-static {}, Lcom/android/server/WimaxService;->access$200()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 239
    :cond_2f
    monitor-exit v1

    .line 240
    return-void

    .line 239
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_31

    throw v0
.end method
