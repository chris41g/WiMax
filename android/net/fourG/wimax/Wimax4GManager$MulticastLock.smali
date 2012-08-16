.class public Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
.super Ljava/lang/Object;
.source "Wimax4GManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/wimax/Wimax4GManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulticastLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/fourG/wimax/Wimax4GManager;


# direct methods
.method private constructor <init>(Landroid/net/fourG/wimax/Wimax4GManager;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 1330
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    iput-object p2, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mTag:Ljava/lang/String;

    .line 1332
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    .line 1333
    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCount:I

    .line 1334
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCounted:Z

    .line 1335
    iput-boolean v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mHeld:Z

    .line 1336
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/fourG/wimax/Wimax4GManager;Ljava/lang/String;Landroid/net/fourG/wimax/Wimax4GManager$1;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1323
    invoke-direct {p0, p1, p2}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;-><init>(Landroid/net/fourG/wimax/Wimax4GManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 6

    .prologue
    .line 1359
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    .line 1360
    :try_start_3
    iget-boolean v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCounted:Z

    if-eqz v1, :cond_46

    iget v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_52

    if-lez v1, :cond_44

    .line 1362
    :goto_f
    :try_start_f
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/net/fourG/wimax/IWimax4GManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1363
    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_52
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1b} :catch_35

    .line 1364
    :try_start_1b
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    #getter for: Landroid/net/fourG/wimax/Wimax4GManager;->mActiveLockCount:I
    invoke-static {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->access$600(Landroid/net/fourG/wimax/Wimax4GManager;)I

    move-result v1

    const/16 v4, 0x32

    if-lt v1, v4, :cond_4b

    .line 1365
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->releaseMulticastLock()V

    .line 1366
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Exceeded maximum number of wimax locks"

    invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1370
    :catchall_32
    move-exception v1

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_32

    :try_start_34
    throw v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_52
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_35} :catch_35

    .line 1371
    :catch_35
    move-exception v0

    .line 1372
    .local v0, ignore:Landroid/os/RemoteException;
    :try_start_36
    sget-boolean v1, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v1, :cond_41

    const-string v1, "Wimax4GManager"

    const-string v3, "------MulticastLock - acquire RemoteException----------------"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    .end local v0           #ignore:Landroid/os/RemoteException;
    :cond_41
    :goto_41
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mHeld:Z

    .line 1376
    :cond_44
    monitor-exit v2

    .line 1377
    return-void

    .line 1360
    :cond_46
    iget-boolean v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mHeld:Z
    :try_end_48
    .catchall {:try_start_36 .. :try_end_48} :catchall_52

    if-nez v1, :cond_44

    goto :goto_f

    .line 1369
    :cond_4b
    :try_start_4b
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-static {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->access$708(Landroid/net/fourG/wimax/Wimax4GManager;)I

    .line 1370
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_32

    goto :goto_41

    .line 1376
    :catchall_52
    move-exception v1

    :try_start_53
    monitor-exit v2
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1469
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1470
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->setReferenceCounted(Z)V

    .line 1471
    invoke-virtual {p0}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->release()V

    .line 1472
    return-void
.end method

.method public isHeld()Z
    .registers 3

    .prologue
    .line 1448
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 1449
    :try_start_3
    iget-boolean v0, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 1450
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public release()V
    .registers 6

    .prologue
    .line 1404
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v2

    .line 1405
    :try_start_3
    iget-boolean v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCounted:Z

    if-eqz v1, :cond_42

    iget v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCount:I
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3f

    if-nez v1, :cond_20

    .line 1407
    :goto_f
    :try_start_f
    sget-object v1, Landroid/net/fourG/wimax/Wimax4GManager;->mService:Landroid/net/fourG/wimax/IWimax4GManager;

    invoke-interface {v1}, Landroid/net/fourG/wimax/IWimax4GManager;->releaseMulticastLock()V

    .line 1408
    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    monitor-enter v3
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_3f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_4a

    .line 1409
    :try_start_17
    iget-object v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->this$0:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-static {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->access$810(Landroid/net/fourG/wimax/Wimax4GManager;)I

    .line 1410
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_47

    .line 1414
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    :try_start_1e
    iput-boolean v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mHeld:Z

    .line 1416
    :cond_20
    iget v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCount:I

    if-gez v1, :cond_57

    .line 1417
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MulticastLock under-locked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1420
    :catchall_3f
    move-exception v1

    monitor-exit v2
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_3f

    throw v1

    .line 1405
    :cond_42
    :try_start_42
    iget-boolean v1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mHeld:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_3f

    if-eqz v1, :cond_20

    goto :goto_f

    .line 1410
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_3f
    .catch Landroid/os/RemoteException; {:try_start_49 .. :try_end_4a} :catch_4a

    .line 1411
    :catch_4a
    move-exception v0

    .line 1412
    .local v0, ignore:Landroid/os/RemoteException;
    :try_start_4b
    sget-boolean v1, Landroid/net/fourG/wimax/Wimax4GManager;->m_bLog:Z

    if-eqz v1, :cond_1d

    const-string v1, "Wimax4GManager"

    const-string v3, "------MulticastLock - release RemoteException----------------"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 1420
    .end local v0           #ignore:Landroid/os/RemoteException;
    :cond_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_3f

    .line 1421
    return-void
.end method

.method public setReferenceCounted(Z)V
    .registers 2
    .parameter "refCounted"

    .prologue
    .line 1439
    iput-boolean p1, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCounted:Z

    .line 1440
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 1455
    iget-object v4, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 1456
    :try_start_3
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1457
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mHeld:Z

    if-eqz v3, :cond_53

    const-string v1, "held; "

    .line 1458
    .local v1, s2:Ljava/lang/String;
    :goto_11
    iget-boolean v3, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCounted:Z

    if-eqz v3, :cond_56

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1463
    .local v2, s3:Ljava/lang/String;
    :goto_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MulticastLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 1457
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_53
    const-string v1, ""

    goto :goto_11

    .line 1461
    .restart local v1       #s2:Ljava/lang/String;
    :cond_56
    const-string v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_2a

    .line 1464
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_59
    move-exception v3

    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v3
.end method
