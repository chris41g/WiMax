.class Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WimaxStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/WimaxStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WimaxStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/fourG/wimax/WimaxStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/fourG/wimax/WimaxStateTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 2564
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/fourG/wimax/WimaxStateTracker$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2564
    invoke-direct {p0, p1}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2567
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testhere WimaxStateReceiver onReceive  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2568
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.fourG.wimax.NETWORK_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 2569
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v3, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$902(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 2571
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v2, "linkProperties"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v3, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1102(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2573
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/LinkProperties;

    move-result-object v2

    if-nez v2, :cond_5c

    .line 2574
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v3, Landroid/net/LinkProperties;

    invoke-direct {v3}, Landroid/net/LinkProperties;-><init>()V

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;
    invoke-static {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1102(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    .line 2576
    :cond_5c
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v2, "linkCapabilities"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/LinkCapabilities;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v3, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1202(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2578
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1200(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/LinkCapabilities;

    move-result-object v2

    if-nez v2, :cond_7b

    .line 2579
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v3, Landroid/net/LinkCapabilities;

    invoke-direct {v3}, Landroid/net/LinkCapabilities;-><init>()V

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;
    invoke-static {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1202(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;

    .line 2583
    :cond_7b
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$900(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    .line 2584
    .local v1, state:Landroid/net/NetworkInfo$State;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo$State;

    move-result-object v2

    if-ne v2, v1, :cond_8e

    .line 2599
    .end local v1           #state:Landroid/net/NetworkInfo$State;
    :cond_8d
    :goto_8d
    return-void

    .line 2587
    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    :cond_8e
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #setter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;
    invoke-static {v2, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1302(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;

    .line 2589
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z

    move-result v2

    if-eqz v2, :cond_b3

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testhere sending EVENT_STATE_CHANGED state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :cond_b3
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$1400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;->this$0:Landroid/net/fourG/wimax/WimaxStateTracker;

    #getter for: Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->access$900(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2591
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8d
.end method
