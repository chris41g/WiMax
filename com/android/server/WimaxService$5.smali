.class Lcom/android/server/WimaxService$5;
.super Landroid/telephony/PhoneStateListener;
.source "WimaxService.java"


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
    .line 313
    iput-object p1, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 12
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 315
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCallStateChanged : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_22
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    iput p1, v4, Lcom/android/server/WimaxService;->m_nCallState:I

    .line 317
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v1

    .line 319
    .local v1, nWimaxMode:I
    if-eq v1, v8, :cond_31

    const/4 v4, 0x4

    if-ne v1, v4, :cond_69

    .line 320
    :cond_31
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->getWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    .line 321
    .local v3, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v2

    .line 323
    .local v2, wimax4GState:I
    if-ne p1, v8, :cond_6a

    .line 324
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    .line 325
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_55

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_55

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v3, v4, :cond_69

    .line 327
    :cond_55
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_64

    const-string v4, "WimaxService"

    const-string v5, "CALL_STATE_OFFHOOK, disconnect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_64
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4}, Lcom/android/server/WimaxService;->disconnect()Z

    .line 339
    .end local v2           #wimax4GState:I
    .end local v3           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_69
    :goto_69
    return-void

    .line 330
    .restart local v2       #wimax4GState:I
    .restart local v3       #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :cond_6a
    if-nez p1, :cond_69

    .line 331
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->getNoBackoff()Z

    move-result v0

    .line 332
    .local v0, bNoBackOff:Z
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    .line 333
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v3, v4, :cond_69

    const/4 v4, 0x3

    if-ne v2, v4, :cond_69

    if-eqz v0, :cond_69

    .line 334
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    #getter for: Lcom/android/server/WimaxService;->m_bLog:Z
    invoke-static {v4}, Lcom/android/server/WimaxService;->access$300(Lcom/android/server/WimaxService;)Z

    move-result v4

    if-eqz v4, :cond_97

    const-string v4, "WimaxService"

    const-string v5, "CALL_STATE_IDLE, reconnect"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_97
    iget-object v4, p0, Lcom/android/server/WimaxService$5;->this$0:Lcom/android/server/WimaxService;

    invoke-virtual {v4, v7}, Lcom/android/server/WimaxService;->startScan(Z)Z

    goto :goto_69
.end method
