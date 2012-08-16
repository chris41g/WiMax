.class public Lcom/android/server/WimaxService;
.super Landroid/net/fourG/wimax/IWimax4GManager$Stub;
.source "WimaxService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WimaxService$Multicaster;,
        Lcom/android/server/WimaxService$DeathRecipient;,
        Lcom/android/server/WimaxService$LockList;,
        Lcom/android/server/WimaxService$Lock;,
        Lcom/android/server/WimaxService$WimaxHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_IDLE_MILLIS:J = 0xdbba0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final MESSAGE_DISABLE_WIMAX:I = 0x1

.field private static final MESSAGE_ENABLE_WIMAX:I = 0x0

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_START_WIMAX:I = 0x3

.field private static final MESSAGE_STOP_WIMAX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WimaxService"

.field private static final USB_CONNECTED:[B = null

.field private static final USB_STATE:Ljava/lang/String; = "/sys/class/sec/switch/usb_state"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WimaxService"

.field private static mIsBackhaulMode:Z

.field private static mIsDMmode:Z

.field private static mIsTetheredmode:Z

.field private static mModeWhieAPsleep:B

.field private static mbUSBTethered:Z

.field private static sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

.field private mAirplaneModeOverwridden:Z

.field private mAvailableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

.field mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

.field private mContext:Landroid/content/Context;

.field mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

.field private mDiffRxsize:J

.field private mDiffTime:I

.field private mEndTime:J

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WimaxService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WimaxService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxEnd:J

.field private mRxStart:J

.field private mStartTime:J

.field private mThroughput:I

.field private mWimax4GState:I

.field private final mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

.field private mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

.field private final mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

.field private m_bLog:Z

.field m_nCallState:I

.field private m_nPluggedType:I

.field telMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 193
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    .line 194
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsDMmode:Z

    .line 195
    sput-boolean v0, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    .line 196
    sput-boolean v0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    .line 199
    const/4 v0, 0x1

    sput-byte v0, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    .line 202
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/server/WimaxService;->USB_CONNECTED:[B

    return-void

    :array_16
    .array-data 0x1
        0x55t
        0x53t
        0x42t
        0x5ft
        0x53t
        0x54t
        0x41t
        0x54t
        0x45t
        0x5ft
        0x43t
        0x4ft
        0x4et
        0x46t
        0x49t
        0x47t
        0x55t
        0x52t
        0x45t
        0x44t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/fourG/wimax/WimaxStateTracker;)V
    .registers 14
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v7, 0x1

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 212
    invoke-direct {p0}, Landroid/net/fourG/wimax/IWimax4GManager$Stub;-><init>()V

    .line 118
    iput-boolean v8, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    .line 130
    new-instance v5, Lcom/android/server/WimaxService$LockList;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/WimaxService$LockList;-><init>(Lcom/android/server/WimaxService;Lcom/android/server/WimaxService$1;)V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    .line 135
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    .line 139
    iput-wide v9, p0, Lcom/android/server/WimaxService;->mStartTime:J

    .line 140
    iput-wide v9, p0, Lcom/android/server/WimaxService;->mEndTime:J

    .line 141
    iput v8, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    .line 143
    iput-wide v9, p0, Lcom/android/server/WimaxService;->mRxStart:J

    .line 144
    iput-wide v9, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    .line 145
    iput-wide v9, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    .line 146
    iput v8, p0, Lcom/android/server/WimaxService;->mThroughput:I

    .line 186
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    .line 187
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mNetworkList:Ljava/util/List;

    .line 188
    new-instance v5, Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-direct {v5}, Landroid/net/fourG/wimax/Wimax4GConfiguration;-><init>()V

    iput-object v5, p0, Lcom/android/server/WimaxService;->m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

    .line 189
    new-instance v5, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-direct {v5}, Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;-><init>()V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    .line 190
    new-instance v5, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-direct {v5}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;-><init>()V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    .line 191
    new-instance v5, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    invoke-direct {v5}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;-><init>()V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    .line 207
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    .line 210
    iput v8, p0, Lcom/android/server/WimaxService;->m_nCallState:I

    .line 1124
    new-instance v5, Lcom/android/server/WimaxService$6;

    invoke-direct {v5, p0}, Lcom/android/server/WimaxService$6;-><init>(Lcom/android/server/WimaxService;)V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    iput-object p1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    .line 215
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WimaxService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 217
    new-instance v1, Landroid/os/HandlerThread;

    const-string v5, "WimaxService"

    invoke-direct {v1, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, WimaxThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 219
    new-instance v5, Lcom/android/server/WimaxService$WimaxHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/WimaxService$WimaxHandler;-><init>(Lcom/android/server/WimaxService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    .line 221
    iput v7, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 222
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v0

    .line 223
    .local v0, WimaxEnabled:Z
    iget-object v5, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iput-boolean v8, v5, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 227
    iget-object v5, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 228
    .local v4, powerManager:Landroid/os/PowerManager;
    const-string v5, "WimaxService"

    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 229
    const-string v5, "WimaxService"

    invoke-virtual {v4, v7, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/server/WimaxService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 230
    iget-object v5, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    new-instance v6, Lcom/android/server/WimaxService$1;

    invoke-direct {v6, p0}, Lcom/android/server/WimaxService$1;-><init>(Lcom/android/server/WimaxService;)V

    invoke-virtual {v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->setReleaseWakeLockCallback(Ljava/lang/Runnable;)V

    .line 244
    iget-boolean v5, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v5, :cond_cc

    const-string v6, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WimaxService starting up with Wimax"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v0, :cond_139

    const-string v5, "enabled"

    :goto_c1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_cc
    iget-object v5, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v5, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->isBootCompleted(Z)V

    .line 247
    iget-object v5, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v6, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->setWakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 248
    iget-object v5, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WimaxService$2;

    invoke-direct {v6, p0}, Lcom/android/server/WimaxService$2;-><init>(Lcom/android/server/WimaxService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 261
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 265
    iget-object v5, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WimaxService$3;

    invoke-direct {v6, p0}, Lcom/android/server/WimaxService$3;-><init>(Lcom/android/server/WimaxService;)V

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    iget-object v5, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WimaxService$4;

    invoke-direct {v6, p0}, Lcom/android/server/WimaxService$4;-><init>(Lcom/android/server/WimaxService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getEnableLog()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    .line 312
    iget-object v5, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/server/WimaxService;->telMgr:Landroid/telephony/TelephonyManager;

    .line 313
    new-instance v3, Lcom/android/server/WimaxService$5;

    invoke-direct {v3, p0}, Lcom/android/server/WimaxService$5;-><init>(Lcom/android/server/WimaxService;)V

    .line 342
    .local v3, listener:Landroid/telephony/PhoneStateListener;
    iget-object v5, p0, Lcom/android/server/WimaxService;->telMgr:Landroid/telephony/TelephonyManager;

    const/16 v6, 0x20

    invoke-virtual {v5, v3, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 343
    return-void

    .line 244
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #listener:Landroid/telephony/PhoneStateListener;
    :cond_139
    const-string v5, "disabled"

    goto :goto_c1
.end method

.method static synthetic access$100(Lcom/android/server/WimaxService;)Lcom/android/server/WimaxService$WimaxHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WimaxService;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/WimaxService;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    return p1
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    return v0
.end method

.method static synthetic access$1102(Z)Z
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    sput-boolean p0, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getEnableLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/WimaxService;)Lcom/android/server/WimaxService$LockList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/WimaxService;Landroid/os/IBinder;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->releaseLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/WimaxService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/WimaxService;II)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/WimaxService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$200()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/WimaxService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WimaxService;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WimaxService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/WimaxService;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WimaxService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WimaxService;)Landroid/net/fourG/wimax/WimaxStateTracker;
    .registers 2
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/WimaxService;ZZI)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WimaxService;Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method private acquireLockLocked(Lcom/android/server/WimaxService$Lock;)Z
    .registers 8
    .parameter "Lock"

    .prologue
    .line 1573
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_1c

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_1c
    iget-object v3, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->addLock(Lcom/android/server/WimaxService$Lock;)V
    invoke-static {v3, p1}, Lcom/android/server/WimaxService$LockList;->access$1600(Lcom/android/server/WimaxService$LockList;Lcom/android/server/WimaxService$Lock;)V

    .line 1576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1577
    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1578
    .local v0, ident:J
    iget v3, p1, Lcom/android/server/WimaxService$Lock;->mMode:I

    packed-switch v3, :pswitch_data_3a

    .line 1583
    :goto_2e
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    .line 1584
    const/4 v3, 0x1

    return v3

    .line 1580
    :pswitch_33
    iget v3, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    goto :goto_2e

    .line 1578
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_33
    .end packed-switch
.end method

.method private acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 4
    .parameter "wl"

    .prologue
    .line 613
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 614
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 615
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_14

    const-string v0, "WimaxService"

    const-string v1, "------WakeLock already acquired----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_14
    :goto_14
    return-void

    .line 617
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_20

    const-string v0, "WimaxService"

    const-string v1, "------WakeLock will be acquired----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_20
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_14
.end method

.method private enforceAccessPermission()V
    .registers 4

    .prologue
    .line 562
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_4G_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method private enforceChangePermission()V
    .registers 4

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_4G_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .registers 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIMAX_MULTICAST_STATE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method private enforceRadioDisablePermission()V
    .registers 4

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_4G_RADIO_DISABLE"

    const-string v2, "WimaxService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void
.end method

.method private getEnableLog()Z
    .registers 14

    .prologue
    const/4 v9, 0x0

    .line 1721
    const/4 v8, 0x0

    .line 1723
    .local v8, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1724
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1726
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v10, "/data/4G.txt"

    invoke-direct {v4, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_38

    .line 1732
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_5f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_3a

    .line 1733
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_a0
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_a3

    move-result-object v8

    .line 1739
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1740
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_8e

    .line 1748
    const/4 v6, 0x0

    .local v6, i:I
    :goto_20
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_6a

    .line 1749
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v11, "F"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 1750
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1752
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v6           #i:I
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_37
    return v9

    .line 1727
    :catch_38
    move-exception v5

    .line 1728
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_37

    .line 1734
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_3a
    move-exception v2

    .line 1735
    .local v2, e:Ljava/io/IOException;
    :goto_3b
    :try_start_3b
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_57

    const-string v10, "WimaxService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "File error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_3b .. :try_end_57} :catchall_5f

    .line 1739
    :cond_57
    :try_start_57
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1740
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_7e

    move-object v3, v4

    .line 1736
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 1738
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_5f
    move-exception v10

    .line 1739
    :goto_60
    :try_start_60
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1740
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_66} :catch_6d

    .line 1738
    throw v10

    .line 1748
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v6       #i:I
    :cond_67
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_6a
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1752
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 1741
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #i:I
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_6d
    move-exception v7

    .line 1742
    .local v7, ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_79

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_79
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    :goto_7c
    move-object v3, v4

    .line 1744
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_37

    .line 1741
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_7e
    move-exception v7

    .line 1742
    .restart local v7       #ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_8a

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_8a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7c

    .line 1741
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_8e
    move-exception v7

    .line 1742
    .restart local v7       #ioe:Ljava/io/IOException;
    iget-boolean v10, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v10, :cond_9a

    const-string v10, "WimaxService"

    const-string v11, "file close error"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_9a
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 1744
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_37

    .line 1738
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v7           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_a0
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_60

    .line 1734
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_a3
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3b
.end method

.method private getPersistedNetworkConnectionEnabled()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 367
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 369
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_7
    const-string v3, "wimax_network_connection"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_c} :catch_12

    move-result v3

    if-ne v3, v2, :cond_10

    .line 372
    :goto_f
    return v2

    .line 369
    :cond_10
    const/4 v2, 0x0

    goto :goto_f

    .line 370
    :catch_12
    move-exception v1

    .line 371
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_network_connection"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_f
.end method

.method private isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1403
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method private isAirplaneSensitive()Z
    .registers 5

    .prologue
    .line 1383
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1385
    .local v0, airplaneModeRadios:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_28

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAirplaneSensitive return true  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_28
    if-eqz v0, :cond_32

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    :cond_32
    const/4 v1, 0x1

    :goto_33
    return v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private isAirplaneToggleable()Z
    .registers 4

    .prologue
    .line 1391
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_18

    const-string v1, "wimax"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private persistNetworkConnectionEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 377
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 378
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wimax_network_connection"

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    return-void

    .line 378
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private persistWimaxEnabled(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 362
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 363
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wimax_on"

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_b
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 364
    return-void

    .line 363
    :cond_f
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private registerForBroadcasts()V
    .registers 4

    .prologue
    .line 1369
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1370
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1371
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1372
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1373
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1374
    const-string v1, "com.android.settings.TETHERING_WIMAX_REALM_CHANGE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1375
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1376
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const-string v1, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1379
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1380
    return-void
.end method

.method private releaseLockLocked(Landroid/os/IBinder;)Z
    .registers 10
    .parameter "lock"

    .prologue
    .line 1597
    iget-object v5, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;
    invoke-static {v5, p1}, Lcom/android/server/WimaxService$LockList;->access$1700(Lcom/android/server/WimaxService$LockList;Landroid/os/IBinder;)Lcom/android/server/WimaxService$Lock;

    move-result-object v4

    .line 1599
    .local v4, wimaxLock:Lcom/android/server/WimaxService$Lock;
    iget-boolean v5, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v5, :cond_22

    const-string v5, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releaseLockLocked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_22
    if-eqz v4, :cond_38

    const/4 v0, 0x1

    .line 1602
    .local v0, hadLock:Z
    :goto_25
    if-eqz v0, :cond_34

    .line 1603
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1604
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1605
    .local v1, ident:J
    iget v5, v4, Lcom/android/server/WimaxService$Lock;->mMode:I

    packed-switch v5, :pswitch_data_42

    .line 1612
    .end local v1           #ident:J
    .end local v3           #uid:I
    :cond_34
    :goto_34
    invoke-direct {p0}, Lcom/android/server/WimaxService;->updateWimaxStatus()V

    .line 1613
    return v0

    .line 1600
    .end local v0           #hadLock:Z
    :cond_38
    const/4 v0, 0x0

    goto :goto_25

    .line 1607
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    .restart local v3       #uid:I
    :pswitch_3a
    iget v5, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    goto :goto_34

    .line 1605
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3a
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .registers 7
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 1705
    iget-object v2, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Multicaster;

    .line 1706
    .local v1, removed:Lcom/android/server/WimaxService$Multicaster;
    if-eqz v1, :cond_d

    .line 1707
    invoke-virtual {v1}, Lcom/android/server/WimaxService$Multicaster;->unlinkDeathRecipient()V

    .line 1709
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1710
    .local v0, ident:Ljava/lang/Long;
    return-void
.end method

.method private sendEnableMessage(ZZI)V
    .registers 9
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1337
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    if-eqz p1, :cond_11

    move v3, v2

    :goto_7
    if-eqz p2, :cond_13

    :goto_9
    invoke-static {v4, v3, v1, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 1340
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1341
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_11
    move v3, v1

    .line 1337
    goto :goto_7

    :cond_13
    move v1, v2

    goto :goto_9
.end method

.method private setWimaxEnabledBlocking(ZZI)Z
    .registers 16
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 428
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v0

    .line 429
    .local v0, nWimaxEnabledState:I
    if-nez p1, :cond_1a

    if-eq v0, v5, :cond_e

    if-nez v0, :cond_1a

    .line 431
    :cond_e
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_19

    const-string v4, "WimaxService"

    const-string v6, "[setWimaxEnabledBlocking] already disabled"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_19
    :goto_19
    return v5

    .line 436
    :cond_1a
    if-eqz p1, :cond_44

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_44

    move v4, v5

    :goto_29
    iput-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    .line 437
    if-eqz p1, :cond_46

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_46

    iget-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v4, :cond_46

    .line 438
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_42

    const-string v4, "WimaxService"

    const-string v5, "[set4GEnabled] can\'t enable 4G because isAirplaneModeOn() is true"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    move v5, v6

    .line 439
    goto :goto_19

    :cond_44
    move v4, v6

    .line 436
    goto :goto_29

    .line 442
    :cond_46
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v4, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    if-nez v4, :cond_5f

    .line 443
    if-ne p1, v5, :cond_5f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_53

    if-ne v0, v7, :cond_5f

    .line 445
    :cond_53
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_19

    const-string v4, "WimaxService"

    const-string v6, "[setWimaxEnabledBlocking] already enabled"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 451
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getWorkModeState()I

    move-result v2

    .line 452
    .local v2, nWorkModeState:I
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_7f

    const-string v4, "WimaxService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[setWimaxEnabledBlocking] Workmode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_7f
    if-eqz p1, :cond_17b

    move v4, v7

    :goto_82
    invoke-direct {p0, v4, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 461
    iget-object v8, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v8

    .line 462
    :try_start_88
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_93

    const-string v4, "WimaxService"

    const-string v9, "synchronized wimax.."

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_93
    if-eqz p1, :cond_1d5

    .line 464
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_e5

    const-string v4, "WimaxService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wimax ON ---mModeWhieAPsleep = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-byte v10, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mModemReset = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v10, v10, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mIsDMmode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/WimaxService;->mIsDMmode:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " mbUSBTethered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " m_nPluggedType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_e5
    invoke-direct {p0}, Lcom/android/server/WimaxService;->getPersistedNetworkConnectionEnabled()Z

    move-result v4

    if-eqz v4, :cond_17e

    .line 467
    const/4 v4, 0x1

    sput-byte v4, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    .line 472
    :goto_ee
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v4, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    if-nez v4, :cond_186

    .line 473
    invoke-direct {p0}, Lcom/android/server/WimaxService;->registerForBroadcasts()V

    .line 474
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->startEventLoop()V

    .line 478
    :goto_fc
    sget-byte v4, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxNative;->setVirtualIdleWhileAPsleep(B)Z

    .line 479
    sget-boolean v4, Lcom/android/server/WimaxService;->mbUSBTethered:Z

    if-eqz v4, :cond_18d

    iget v4, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    if-ne v4, v7, :cond_18d

    .line 480
    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v4, v9}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    .line 484
    :goto_10e
    sget-boolean v4, Lcom/android/server/WimaxService;->mIsDMmode:Z

    if-eqz v4, :cond_194

    .line 485
    const/4 v4, 0x4

    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxNative;->setWimaxTethered(B)Z

    .line 490
    :goto_116
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 491
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->startWimax()Z

    move-result v4

    if-nez v4, :cond_19f

    .line 492
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    .line 493
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_145

    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to start Wimax. m_bPoweroff = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v7, v7, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_145
    iget-object v4, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 495
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget-boolean v4, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    if-eqz v4, :cond_19a

    .line 496
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_170

    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWimax4GState = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_170
    const/4 v4, 0x1

    invoke-direct {p0, v4, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 500
    :goto_174
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->release_sWakeLock()V

    .line 501
    monitor-exit v8

    move v5, v6

    goto/16 :goto_19

    :cond_17b
    move v4, v6

    .line 460
    goto/16 :goto_82

    .line 469
    :cond_17e
    const/4 v4, 0x0

    sput-byte v4, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    goto/16 :goto_ee

    .line 542
    :catchall_183
    move-exception v4

    monitor-exit v8
    :try_end_185
    .catchall {:try_start_88 .. :try_end_185} :catchall_183

    throw v4

    .line 476
    :cond_186
    :try_start_186
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v9, 0x0

    iput-boolean v9, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    goto/16 :goto_fc

    .line 482
    :cond_18d
    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v4, v9}, Lcom/android/server/WimaxService;->setWimaxMode(IZ)I

    goto/16 :goto_10e

    .line 487
    :cond_194
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxNative;->setWimaxTethered(B)Z

    goto/16 :goto_116

    .line 499
    :cond_19a
    const/4 v4, 0x4

    invoke-direct {p0, v4, p3}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    goto :goto_174

    .line 504
    :cond_19f
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getWimaxMode()I

    move-result v1

    .line 505
    .local v1, nWimaxMode:I
    if-eq v1, v11, :cond_1a7

    if-ne v1, v7, :cond_1b1

    .line 506
    :cond_1a7
    iget v4, p0, Lcom/android/server/WimaxService;->m_nCallState:I

    if-ne v4, v7, :cond_1b1

    .line 507
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    .line 538
    .end local v1           #nWimaxMode:I
    :cond_1b1
    :goto_1b1
    if-eqz p2, :cond_1d2

    .line 539
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_1cf

    const-string v4, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[setWimaxEnabledBlocking] persist = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1cf
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->persistWimaxEnabled(Z)V

    .line 542
    :cond_1d2
    monitor-exit v8

    goto/16 :goto_19

    .line 510
    :cond_1d5
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v6, 0x1

    iput-boolean v6, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 511
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v6, 0x0

    iput v6, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 512
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetOldState()V
    :try_end_1e4
    .catchall {:try_start_186 .. :try_end_1e4} :catchall_183

    .line 514
    if-eq v11, v0, :cond_1ed

    .line 516
    :try_start_1e6
    iget-object v4, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WimaxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1ed
    .catchall {:try_start_1e6 .. :try_end_1ed} :catchall_183
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e6 .. :try_end_1ed} :catch_279

    .line 520
    :cond_1ed
    :goto_1ed
    :try_start_1ed
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    .line 521
    .local v3, wimaxState:Landroid/net/fourG/wimax/WimaxState;
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_1ff

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_1ff

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v3, v4, :cond_232

    .line 523
    :cond_1ff
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_221

    const-string v4, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") :  DisconnectWimax before turn off"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_221
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 525
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-boolean v6, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    iput-boolean v6, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 526
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    goto :goto_1b1

    .line 528
    :cond_232
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_254

    const-string v4, "WimaxService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : stopWimax"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_254
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-boolean v6, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    iput-boolean v6, v4, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 530
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v4

    if-nez v4, :cond_26b

    .line 531
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_26b

    const-string v4, "WimaxService"

    const-string v6, "fail to stop wimax.."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_26b
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v4

    if-eqz v4, :cond_1b1

    .line 534
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStopped()V
    :try_end_277
    .catchall {:try_start_1ed .. :try_end_277} :catchall_183

    goto/16 :goto_1b1

    .line 517
    .end local v3           #wimaxState:Landroid/net/fourG/wimax/WimaxState;
    :catch_279
    move-exception v4

    goto/16 :goto_1ed
.end method

.method private setWimaxEnabledState(II)V
    .registers 9
    .parameter "Wimax4GState"
    .parameter "uid"

    .prologue
    .line 547
    iget v3, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 548
    .local v3, previousWimaxStatus:I
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_d

    const-string v4, "WimaxService"

    const-string v5, "[setWimaxEnabledState] "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 552
    .local v0, ident:J
    iput p1, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    .line 554
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    const-string v4, "4g_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 557
    const-string v4, "4G_previous_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    iget-object v4, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 559
    return-void
.end method

.method private static stateName(I)Ljava/lang/String;
    .registers 2
    .parameter "net4GState"

    .prologue
    .line 1473
    packed-switch p0, :pswitch_data_16

    .line 1485
    const-string v0, "[invalid state]"

    :goto_5
    return-object v0

    .line 1475
    :pswitch_6
    const-string v0, "disabling"

    goto :goto_5

    .line 1477
    :pswitch_9
    const-string v0, "disabled"

    goto :goto_5

    .line 1479
    :pswitch_c
    const-string v0, "enabling"

    goto :goto_5

    .line 1481
    :pswitch_f
    const-string v0, "enabled"

    goto :goto_5

    .line 1483
    :pswitch_12
    const-string v0, "unknown 4G state"

    goto :goto_5

    .line 1473
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private updateWimaxStatus()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->getPersistedWimaxEnabled()Z

    move-result v0

    .line 1345
    .local v0, WimaxEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_9e

    iget-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v4, :cond_9e

    move v2, v1

    .line 1346
    .local v2, airplaneMode:Z
    :goto_11
    if-eqz v0, :cond_a1

    if-nez v2, :cond_a1

    .line 1347
    .local v1, WimaxShouldBeEnabled:Z
    :goto_15
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_31

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateWimaxStatus] airplaneMode1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :cond_31
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_4f

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateWimaxStatus] mAirplaneModeOverwridden "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    :cond_4f
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_6b

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateWimaxStatus] WimaxShouldBeEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_6b
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_87

    const-string v3, "WimaxService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateWimaxStatus] WimaxEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    :cond_87
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v4

    .line 1352
    :try_start_8a
    iget v3, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a4

    if-nez v2, :cond_a4

    .line 1353
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_9c

    const-string v3, "WimaxService"

    const-string v5, "[updateWimaxStatus] mWimax4GState == NET_4G_STATE_ENABLING && !airplaneMode return ;"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_9c
    monitor-exit v4

    .line 1366
    :goto_9d
    return-void

    .end local v1           #WimaxShouldBeEnabled:Z
    .end local v2           #airplaneMode:Z
    :cond_9e
    move v2, v3

    .line 1345
    goto/16 :goto_11

    .restart local v2       #airplaneMode:Z
    :cond_a1
    move v1, v3

    .line 1346
    goto/16 :goto_15

    .line 1356
    .restart local v1       #WimaxShouldBeEnabled:Z
    :cond_a4
    if-eqz v1, :cond_c2

    .line 1357
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_b1

    const-string v3, "WimaxService"

    const-string v5, "[updateWimaxStatus] WimaxShouldBeEnabled == true"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_b1
    sget-object v3, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v3}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1359
    const/4 v3, 0x1

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V

    .line 1365
    :goto_bd
    monitor-exit v4

    goto :goto_9d

    :catchall_bf
    move-exception v3

    monitor-exit v4
    :try_end_c1
    .catchall {:try_start_8a .. :try_end_c1} :catchall_bf

    throw v3

    .line 1361
    :cond_c2
    :try_start_c2
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_cd

    const-string v3, "WimaxService"

    const-string v5, "[updateWiMAXState] WimaxShouldBeEnabled == false acquire sWakeLock"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    :cond_cd
    sget-object v3, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v3}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 1363
    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V
    :try_end_d9
    .catchall {:try_start_c2 .. :try_end_d9} :catchall_bf

    goto :goto_bd
.end method


# virtual methods
.method public CheckWimaxState()Z
    .registers 2

    .prologue
    .line 911
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 912
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkState()Z

    move-result v0

    return v0
.end method

.method public OdbAddReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1095
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbAddReq([B)I

    move-result v0

    return v0
.end method

.method public OdbDeleteReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1099
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1100
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbDeleteReq([B)I

    move-result v0

    return v0
.end method

.method public OdbReadReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1080
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbReadReq([B)I

    move-result v0

    return v0
.end method

.method public OdbUpdateReq()I
    .registers 2

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1090
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->OdbUpdateReq()I

    move-result v0

    return v0
.end method

.method public OdbWriteReq([B)I
    .registers 3
    .parameter "tlvDataArray"

    .prologue
    .line 1084
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1085
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->OdbWriteReq([B)I

    move-result v0

    return v0
.end method

.method public acquireLock(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 8
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"

    .prologue
    .line 1562
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const/4 v1, 0x1

    if-eq p2, v1, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 1564
    const/4 v1, 0x0

    .line 1568
    :goto_f
    return v1

    .line 1566
    :cond_10
    new-instance v0, Lcom/android/server/WimaxService$Lock;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/server/WimaxService$Lock;-><init>(Lcom/android/server/WimaxService;ILjava/lang/String;Landroid/os/IBinder;)V

    .line 1567
    .local v0, Lock:Lcom/android/server/WimaxService$Lock;
    iget-object v2, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    monitor-enter v2

    .line 1568
    :try_start_18
    invoke-direct {p0, v0}, Lcom/android/server/WimaxService;->acquireLockLocked(Lcom/android/server/WimaxService$Lock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_f

    .line 1569
    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 1664
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceMulticastChangePermission()V

    .line 1666
    iget-object v3, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 1667
    :try_start_6
    iget v2, p0, Lcom/android/server/WimaxService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WimaxService;->mMulticastEnabled:I

    .line 1668
    iget-object v2, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WimaxService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WimaxService$Multicaster;-><init>(Lcom/android/server/WimaxService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1673
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_37

    .line 1675
    :try_start_19
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_34

    .line 1676
    :try_start_1a
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_37

    .line 1678
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1679
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1681
    .local v0, ident:Ljava/lang/Long;
    :try_start_27
    iget-object v2, p0, Lcom/android/server/WimaxService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_43

    .line 1684
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_30
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1686
    return-void

    .line 1675
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_34
    move-exception v2

    :try_start_35
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v2

    .line 1676
    :catchall_37
    move-exception v2

    monitor-exit v3
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw v2

    .line 1684
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_3a
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1682
    :catch_43
    move-exception v2

    .line 1684
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_30
.end method

.method public calWiMAXThroughput(Z)V
    .registers 9
    .parameter "bstart"

    .prologue
    const-wide/16 v5, 0x8

    .line 1832
    if-eqz p1, :cond_42

    .line 1833
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mStartTime:J

    .line 1834
    iget-object v1, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mRxStart:J

    .line 1835
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_41

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start Calculate WiMAX Throughput, StartTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RxSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mRxStart:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_41
    :goto_41
    return-void

    .line 1837
    :cond_42
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mEndTime:J

    .line 1838
    iget-object v1, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    .line 1839
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_7f

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End Calculate WiMAX Throughput, EndTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " RxSize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    :cond_7f
    iget-wide v1, p0, Lcom/android/server/WimaxService;->mEndTime:J

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    .line 1842
    iget-wide v1, p0, Lcom/android/server/WimaxService;->mRxEnd:J

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mRxStart:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    .line 1844
    iget-wide v1, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    mul-long/2addr v1, v5

    long-to-int v1, v1

    iget v2, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    div-int/lit16 v2, v2, 0x3e8

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/WimaxService;->mThroughput:I

    .line 1845
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_d8

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiffTime is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s, DiffRxsize is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bit, Throughput is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WimaxService;->mThroughput:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "bps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_d8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_DATA_THROUGHPUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1850
    const-string v1, "android.net.wimax.EXTRA_TIME"

    iget v2, p0, Lcom/android/server/WimaxService;->mDiffTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1851
    const-string v1, "android.net.wimax.EXTRA_DATA"

    iget-wide v2, p0, Lcom/android/server/WimaxService;->mDiffRxsize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1852
    const-string v1, "android.net.wimax.EXTRA_THROUGHPUT"

    iget v2, p0, Lcom/android/server/WimaxService;->mThroughput:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1853
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_41
.end method

.method public checkUSBstate()Z
    .registers 13

    .prologue
    const/4 v8, 0x0

    .line 750
    const/4 v7, 0x0

    .line 752
    .local v7, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 753
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 755
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_4
    new-instance v4, Ljava/io/FileInputStream;

    const-string v9, "/sys/class/sec/switch/usb_state"

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_b} :catch_30

    .line 762
    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_57
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_15} :catch_32

    .line 763
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_98
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_9b

    move-result-object v7

    .line 769
    :try_start_19
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 770
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1f} :catch_86

    .line 778
    const-string v9, "USB_STATE_CONFIGURED"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_62

    .line 779
    iget v9, p0, Lcom/android/server/WimaxService;->m_nPluggedType:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5f

    .line 780
    const/4 v8, 0x1

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 784
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2f
    return v8

    .line 756
    :catch_30
    move-exception v5

    .line 758
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    goto :goto_2f

    .line 764
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_32
    move-exception v2

    .line 765
    .local v2, e:Ljava/io/IOException;
    :goto_33
    :try_start_33
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_4f

    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_57

    .line 769
    :cond_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 770
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_76

    move-object v3, v4

    .line 766
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2f

    .line 768
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_57
    move-exception v9

    .line 769
    :goto_58
    :try_start_58
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 770
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5e} :catch_65

    .line 768
    throw v9

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_5f
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 782
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :cond_62
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 784
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .line 771
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_65
    move-exception v6

    .line 772
    .local v6, ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_71

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_71
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_74
    move-object v3, v4

    .line 774
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    goto :goto_2f

    .line 771
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catch_76
    move-exception v6

    .line 772
    .restart local v6       #ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_82

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_82
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74

    .line 771
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_86
    move-exception v6

    .line 772
    .restart local v6       #ioe:Ljava/io/IOException;
    iget-boolean v9, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v9, :cond_92

    const-string v9, "WimaxService"

    const-string v10, "file close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_92
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    move-object v0, v1

    .line 774
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2f

    .line 768
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileInputStream;
    :catchall_98
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_58

    .line 764
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_9b
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_33
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "homeNspName"
    .parameter "roamingNspName"
    .parameter "userName"
    .parameter "passWord"

    .prologue
    const/4 v5, 0x0

    .line 852
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_1d

    const-string v2, "WimaxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[connect] homeNspName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_1d
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-static {p1, v2, v3, v5, v4}, Landroid/net/fourG/wimax/WimaxNative;->connectmWimax(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 855
    .local v0, result:I
    if-nez v0, :cond_42

    .line 856
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_34

    const-string v2, "WimaxService"

    const-string v3, "^^^^^ Connection req. is success ^^^^^"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_34
    const/4 v0, 0x0

    .line 864
    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->setHaveLinkInfo(Z)V

    .line 865
    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->setIdleState(Z)V

    move v1, v0

    .line 867
    .end local v0           #result:I
    .local v1, result:I
    :goto_41
    return v1

    .line 859
    .end local v1           #result:I
    .restart local v0       #result:I
    :cond_42
    iget-boolean v2, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v2, :cond_4d

    const-string v2, "WimaxService"

    const-string v3, "connectmWimax() returns fail."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_4d
    const/4 v0, -0x1

    move v1, v0

    .line 861
    .end local v0           #result:I
    .restart local v1       #result:I
    goto :goto_41
.end method

.method public createConnectionStatistics()Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxBytes()J

    .line 821
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalRxPackets()J

    .line 822
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxBytes()J

    .line 823
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;->getTotalTxPackets()J

    .line 824
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnectionStatistics:Landroid/net/fourG/wimax/Wimax4GManager$WimaxConnectionStatistics;

    return-object v0
.end method

.method public deleteStaticIP()I
    .registers 7

    .prologue
    .line 1815
    const/4 v1, 0x0

    .line 1817
    .local v1, fOut:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/data/wimax_ip.txt"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_1b

    .line 1818
    .end local v1           #fOut:Ljava/io/FileWriter;
    .local v2, fOut:Ljava/io/FileWriter;
    :try_start_8
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1819
    .local v3, osw:Ljava/io/BufferedWriter;
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1821
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1822
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_25

    .line 1823
    const/4 v4, 0x1

    move-object v1, v2

    .line 1826
    .end local v2           #fOut:Ljava/io/FileWriter;
    .end local v3           #osw:Ljava/io/BufferedWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    :goto_1a
    return v4

    .line 1824
    :catch_1b
    move-exception v0

    .line 1825
    .local v0, e:Ljava/io/IOException;
    :goto_1c
    const-string v4, "WimaxService"

    const-string v5, "File wimax_ip.txt not reset"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const/4 v4, -0x1

    goto :goto_1a

    .line 1824
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileWriter;
    .restart local v2       #fOut:Ljava/io/FileWriter;
    :catch_25
    move-exception v0

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    goto :goto_1c
.end method

.method public disconnect()Z
    .registers 2

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 875
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 1451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WimaxService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    :goto_32
    return-void

    .line 1456
    :cond_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wimax is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    invoke-static {v1}, Lcom/android/server/WimaxService;->stateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stay-awake conditions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "stay_on_while_plugged_in"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1462
    const-string v0, "Internal state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1464
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mFullLocksAcquired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locks released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WimaxService;->mFullLocksReleased:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " full"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1468
    const-string v0, "Locks held:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    #calls: Lcom/android/server/WimaxService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v0, p2}, Lcom/android/server/WimaxService$LockList;->access$1300(Lcom/android/server/WimaxService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_32
.end method

.method public enableLogLevel(I)V
    .registers 3
    .parameter "nLoglevel"

    .prologue
    .line 917
    packed-switch p1, :pswitch_data_10

    .line 931
    const/4 v0, 0x1

    .line 934
    .local v0, Loglevel:C
    :goto_4
    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setEnableLogLevel(C)V

    .line 935
    return-void

    .line 919
    .end local v0           #Loglevel:C
    :pswitch_8
    const/4 v0, 0x1

    .line 920
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 922
    .end local v0           #Loglevel:C
    :pswitch_a
    const/4 v0, 0x2

    .line 923
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 925
    .end local v0           #Loglevel:C
    :pswitch_c
    const/4 v0, 0x3

    .line 926
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 928
    .end local v0           #Loglevel:C
    :pswitch_e
    const/4 v0, 0x4

    .line 929
    .restart local v0       #Loglevel:C
    goto :goto_4

    .line 917
    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_e
    .end packed-switch
.end method

.method public get4GState()I
    .registers 2

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 591
    iget v0, p0, Lcom/android/server/WimaxService;->mWimax4GState:I

    return v0
.end method

.method public getAvailableNetworks()Ljava/util/List;
    .registers 2
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
    .line 808
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 809
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setAvailableList(Ljava/util/List;)V

    .line 810
    iget-object v0, p0, Lcom/android/server/WimaxService;->m4GConfiguration:Landroid/net/fourG/wimax/Wimax4GConfiguration;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getAvailableNetworks(Landroid/net/fourG/wimax/Wimax4GConfiguration;)Z

    .line 811
    iget-object v0, p0, Lcom/android/server/WimaxService;->mAvailableList:Ljava/util/List;

    return-object v0
.end method

.method public getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;
    .registers 2

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getConnectedNSP(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)I

    .line 816
    iget-object v0, p0, Lcom/android/server/WimaxService;->mConnected4GBaseStationInfo:Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 2

    .prologue
    .line 837
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 842
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->getDeviceInformation(Landroid/net/fourG/wimax/Wimax4GDeviceInfo;)Z

    .line 829
    iget-object v0, p0, Lcom/android/server/WimaxService;->mDeviceInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 943
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 944
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTemperature()I
    .registers 5

    .prologue
    const/16 v2, -0x64

    .line 2116
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2118
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v3, "wimax_max_radio_temperature"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v2

    .line 2121
    :goto_e
    return v2

    .line 2119
    :catch_f
    move-exception v1

    .line 2120
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_max_radio_temperature"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e
.end method

.method public getMinTemperature()I
    .registers 5

    .prologue
    const/16 v2, 0x3e8

    .line 2106
    iget-object v3, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2108
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v3, "wimax_min_radio_temperature"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_f

    move-result v2

    .line 2111
    :goto_e
    return v2

    .line 2109
    :catch_f
    move-exception v1

    .line 2110
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "wimax_min_radio_temperature"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_e
.end method

.method public getMruList()V
    .registers 2

    .prologue
    .line 1015
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1016
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getMruList()Z

    .line 1017
    return-void
.end method

.method public getMruListRsp()Ljava/util/List;
    .registers 2
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
    .line 1020
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->mMruListRsp:Ljava/util/List;

    return-object v0
.end method

.method public getMruUpdate(Ljava/lang/String;I)Z
    .registers 14
    .parameter "strUpdate"
    .parameter "nSize"

    .prologue
    const/4 v10, 0x0

    .line 1024
    iget-boolean v7, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v7, :cond_1d

    const-string v7, "WimaxService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMruUpdate nSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_1d
    if-nez p2, :cond_24

    .line 1026
    invoke-static {v10, v10, v10, p2}, Landroid/net/fourG/wimax/WimaxNative;->getMruUpdate([I[B[BI)Z

    move-result v7

    .line 1050
    :goto_23
    return v7

    .line 1028
    :cond_24
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, "@"

    invoke-direct {v4, p1, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .local v4, st:Ljava/util/StringTokenizer;
    new-array v1, p2, [I

    .line 1031
    .local v1, arCF:[I
    new-array v0, p2, [B

    .line 1032
    .local v0, arBW:[B
    new-array v2, p2, [B

    .line 1033
    .local v2, arFFT:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_32
    if-ge v3, p2, :cond_7a

    .line 1034
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1035
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 1036
    .local v6, temp:Ljava/lang/String;
    if-eqz v6, :cond_77

    .line 1037
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, "#"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .local v5, stList:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1039
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v1, v3

    .line 1040
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1041
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v0, v3

    .line 1042
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 1043
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v7

    aput-byte v7, v2, v3

    .line 1033
    .end local v5           #stList:Ljava/util/StringTokenizer;
    .end local v6           #temp:Ljava/lang/String;
    :cond_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    .line 1050
    :cond_7a
    invoke-static {v1, v0, v2, p2}, Landroid/net/fourG/wimax/WimaxNative;->getMruUpdate([I[B[BI)Z

    move-result v7

    goto :goto_23
.end method

.method public getNeighborList()V
    .registers 1

    .prologue
    .line 948
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getNeighborList()Z

    .line 949
    return-void
.end method

.method public getNetworkConnectionSetting()I
    .registers 2

    .prologue
    .line 386
    sget-byte v0, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    return v0
.end method

.method public getNetworkEntryCompleteTimes()[I
    .registers 2

    .prologue
    .line 846
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 848
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getNetworkEntryCompleteTimes()[I

    move-result-object v0

    return-object v0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    return-object v0
.end method

.method public getPersistedWimaxEnabled()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 346
    iget-object v4, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 354
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_8
    const-string v4, "wimax_on"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_8 .. :try_end_d} :catch_13

    move-result v4

    if-ne v4, v2, :cond_11

    .line 357
    :goto_10
    return v2

    :cond_11
    move v2, v3

    .line 354
    goto :goto_10

    .line 355
    :catch_13
    move-exception v1

    .line 356
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "wimax_on"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 357
    goto :goto_10
.end method

.method public getRadioInfoTemperature()V
    .registers 1

    .prologue
    .line 952
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getRadioInfo()Z

    .line 953
    return-void
.end method

.method public getRadioInfoTemperatureResponse()Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    .registers 2

    .prologue
    .line 956
    sget-object v0, Landroid/net/fourG/wimax/WimaxNative;->radioInfo:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    return-object v0
.end method

.method public getWimaxMode()I
    .registers 3

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 687
    const/4 v0, 0x0

    .line 689
    .local v0, nMode:I
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    if-eqz v1, :cond_a

    .line 690
    const/4 v0, 0x1

    .line 706
    :goto_9
    return v0

    .line 692
    :cond_a
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsDMmode:Z

    if-eqz v1, :cond_16

    .line 693
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    if-eqz v1, :cond_14

    .line 694
    const/4 v0, 0x4

    goto :goto_9

    .line 696
    :cond_14
    const/4 v0, 0x3

    goto :goto_9

    .line 699
    :cond_16
    sget-boolean v1, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    if-eqz v1, :cond_1c

    .line 700
    const/4 v0, 0x2

    goto :goto_9

    .line 702
    :cond_1c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 2

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 604
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    return-object v0
.end method

.method public getWimaxStateDetail()I
    .registers 2

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 609
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxStateDetail()I

    move-result v0

    return v0
.end method

.method public getWorkModeState()I
    .registers 3

    .prologue
    .line 960
    const/4 v1, 0x0

    .line 961
    .local v1, selectedMode:Ljava/lang/String;
    const/4 v0, 0x0

    .line 975
    .local v0, mode:I
    return v0
.end method

.method public isMulticastEnabled()Z
    .registers 3

    .prologue
    .line 1713
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 1715
    iget-object v1, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1716
    :try_start_6
    iget-object v0, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    monitor-exit v1

    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_f

    .line 1717
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public isRoamingEnabled()Z
    .registers 2

    .prologue
    .line 2146
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->isRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public makeOdbTlvData([BIIII[B)I
    .registers 11
    .parameter "pBuffer"
    .parameter "nBufferIndex"
    .parameter "wBufferLen"
    .parameter "wTag"
    .parameter "wLength"
    .parameter "pbValue"

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 1061
    shr-int/lit8 v2, p4, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1062
    .local v0, highByte:B
    shr-int/lit8 v2, p4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 1064
    .local v1, lowByte:B
    add-int/lit8 v2, p2, 0x0

    aput-byte v0, p1, v2

    .line 1065
    add-int/lit8 v2, p2, 0x1

    aput-byte v1, p1, v2

    .line 1067
    shr-int/lit8 v2, p5, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v0, v2

    .line 1068
    shr-int/lit8 v2, p5, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v1, v2

    .line 1070
    add-int/lit8 v2, p2, 0x2

    aput-byte v0, p1, v2

    .line 1071
    add-int/lit8 v2, p2, 0x3

    aput-byte v1, p1, v2

    .line 1073
    const/4 v2, 0x0

    add-int/lit8 v3, p2, 0x4

    invoke-static {p6, v2, p1, v3, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1075
    add-int/lit8 v2, p5, 0x4

    int-to-short v2, v2

    return v2
.end method

.method public readStaticIP(I)Ljava/lang/String;
    .registers 14
    .parameter "nIndex"

    .prologue
    .line 1782
    const/4 v7, 0x0

    .line 1784
    .local v7, msg:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1785
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 1787
    .local v3, fis:Ljava/io/FileReader;
    :try_start_3
    new-instance v4, Ljava/io/FileReader;

    const-string v9, "/data/wimax_ip.txt"

    invoke-direct {v4, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_22

    .line 1794
    .end local v3           #fis:Ljava/io/FileReader;
    .local v4, fis:Ljava/io/FileReader;
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_61
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_3e

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move v8, p1

    .line 1796
    .end local p1
    .local v8, nIndex:I
    :goto_10
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_96
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_9a

    move-result-object v7

    .line 1797
    add-int/lit8 p1, v8, -0x1

    .end local v8           #nIndex:I
    .restart local p1
    if-gtz v8, :cond_9e

    .line 1803
    :try_start_18
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1804
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_86

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v9, v7

    .line 1811
    :goto_21
    return-object v9

    .line 1788
    :catch_22
    move-exception v5

    .line 1789
    .local v5, fnfe:Ljava/io/FileNotFoundException;
    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File Not found exception"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    const-string v9, "no file error"

    goto :goto_21

    .line 1798
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v5           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catch_3e
    move-exception v2

    .line 1799
    .local v2, e:Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    const-string v9, "WimaxService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Read file error : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const-string v9, "read file error"
    :try_end_59
    .catchall {:try_start_3f .. :try_end_59} :catchall_61

    .line 1803
    :try_start_59
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1804
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5f} :catch_78

    move-object v3, v4

    .line 1800
    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    goto :goto_21

    .line 1802
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fis:Ljava/io/FileReader;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catchall_61
    move-exception v9

    .line 1803
    :goto_62
    :try_start_62
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 1804
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_68} :catch_69

    .line 1802
    throw v9

    .line 1805
    :catch_69
    move-exception v6

    .line 1806
    .local v6, ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1807
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const-string v9, "close error"

    :goto_76
    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    goto :goto_21

    .line 1805
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v2       #e:Ljava/io/IOException;
    .restart local v4       #fis:Ljava/io/FileReader;
    :catch_78
    move-exception v6

    .line 1806
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1807
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const-string v9, "close error"

    goto :goto_76

    .line 1805
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v6           #ioe:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_86
    move-exception v6

    .line 1806
    .restart local v6       #ioe:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1807
    const-string v9, "WimaxService"

    const-string v10, "Close error"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    const-string v9, "close error"

    move-object v3, v4

    .end local v4           #fis:Ljava/io/FileReader;
    .restart local v3       #fis:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_21

    .line 1802
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #fis:Ljava/io/FileReader;
    .end local v6           #ioe:Ljava/io/IOException;
    .end local p1
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #fis:Ljava/io/FileReader;
    .restart local v8       #nIndex:I
    :catchall_96
    move-exception v9

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move p1, v8

    .end local v8           #nIndex:I
    .restart local p1
    goto :goto_62

    .line 1798
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local p1
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v8       #nIndex:I
    :catch_9a
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move p1, v8

    .end local v8           #nIndex:I
    .restart local p1
    goto :goto_3f

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :cond_9e
    move v8, p1

    .end local p1
    .restart local v8       #nIndex:I
    goto/16 :goto_10
.end method

.method public reassociate()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 879
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 880
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    move-result v0

    if-ne v0, v1, :cond_11

    .line 881
    invoke-virtual {p0, v1}, Lcom/android/server/WimaxService;->set4GEnabled(Z)Z

    move-result v0

    .line 883
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public reconnect()Z
    .registers 2

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->reconnect()Z

    move-result v0

    return v0
.end method

.method public releaseLock(Landroid/os/IBinder;)Z
    .registers 5
    .parameter "lock"

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v1, p0, Lcom/android/server/WimaxService;->mLocks:Lcom/android/server/WimaxService$LockList;

    monitor-enter v1

    .line 1590
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/WimaxService;->releaseLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1591
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw v0
.end method

.method public releaseMulticastLock()V
    .registers 7

    .prologue
    .line 1689
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceMulticastChangePermission()V

    .line 1691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1692
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 1693
    :try_start_a
    iget v4, p0, Lcom/android/server/WimaxService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WimaxService;->mMulticastDisabled:I

    .line 1694
    iget-object v4, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1695
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_18
    if-ltz v0, :cond_30

    .line 1696
    iget-object v4, p0, Lcom/android/server/WimaxService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WimaxService$Multicaster;

    .line 1697
    .local v1, m:Lcom/android/server/WimaxService$Multicaster;
    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/WimaxService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_2d

    .line 1698
    invoke-direct {p0, v0, v3}, Lcom/android/server/WimaxService;->removeMulticasterLocked(II)V

    .line 1695
    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 1701
    .end local v1           #m:Lcom/android/server/WimaxService$Multicaster;
    :cond_30
    monitor-exit v5

    .line 1702
    return-void

    .line 1701
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_32
    move-exception v4

    monitor-exit v5
    :try_end_34
    .catchall {:try_start_a .. :try_end_34} :catchall_32

    throw v4
.end method

.method public release_sWakeLock()V
    .registers 3

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceAccessPermission()V

    .line 624
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 625
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_16

    const-string v0, "WimaxService"

    const-string v1, "------release WakeLock----------------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_16
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 628
    :cond_1b
    return-void
.end method

.method public saveStaticIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .parameter "ip"
    .parameter "gateway"
    .parameter "netmask"
    .parameter "dns1"
    .parameter "dns2"

    .prologue
    .line 1756
    const/4 v1, 0x0

    .line 1758
    .local v1, fOut:Ljava/io/FileWriter;
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/data/wimax_ip.txt"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_74

    .line 1764
    .end local v1           #fOut:Ljava/io/FileWriter;
    .local v2, fOut:Ljava/io/FileWriter;
    :try_start_8
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1765
    .local v3, osw:Ljava/io/BufferedWriter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1766
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1767
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1768
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v3, p5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1771
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1772
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 1773
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_71} :catch_8f

    .line 1774
    const/4 v4, 0x1

    move-object v1, v2

    .line 1777
    .end local v2           #fOut:Ljava/io/FileWriter;
    .end local v3           #osw:Ljava/io/BufferedWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    :goto_73
    return v4

    .line 1759
    :catch_74
    move-exception v0

    .line 1760
    .local v0, e:Ljava/io/IOException;
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File wimax_ip.txt not created "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    const/4 v4, -0x1

    goto :goto_73

    .line 1775
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fOut:Ljava/io/FileWriter;
    .restart local v2       #fOut:Ljava/io/FileWriter;
    :catch_8f
    move-exception v0

    .line 1776
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "WimaxService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File write error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const/4 v4, -0x2

    move-object v1, v2

    .end local v2           #fOut:Ljava/io/FileWriter;
    .restart local v1       #fOut:Ljava/io/FileWriter;
    goto :goto_73
.end method

.method public set4GEnabled(Z)Z
    .registers 9
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 397
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceRadioDisablePermission()V

    .line 398
    iget-object v4, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    if-nez v4, :cond_d

    .line 416
    :goto_c
    return v2

    .line 400
    :cond_d
    iget-object v5, p0, Lcom/android/server/WimaxService;->mWimaxHandler:Lcom/android/server/WimaxService$WimaxHandler;

    monitor-enter v5

    .line 402
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 403
    .local v0, ident:J
    iget-boolean v4, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v4, :cond_1f

    const-string v4, "WimaxService"

    const-string v6, "acquire sWakeLock----------------------"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1f
    sget-object v4, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v4}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 405
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 407
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WimaxService;->mLastEnableUid:I

    .line 409
    if-eqz p1, :cond_5a

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_5a

    move v4, v3

    :goto_3c
    iput-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    .line 410
    if-eqz p1, :cond_5c

    invoke-direct {p0}, Lcom/android/server/WimaxService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-boolean v4, p0, Lcom/android/server/WimaxService;->mAirplaneModeOverwridden:Z

    if-nez v4, :cond_5c

    .line 411
    iget-boolean v3, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v3, :cond_55

    const-string v3, "WimaxService"

    const-string v4, "[set4GEnabled] can\'t enable 4G because isAirplaneModeOn() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_55
    monitor-exit v5

    goto :goto_c

    .line 415
    .end local v0           #ident:J
    :catchall_57
    move-exception v2

    monitor-exit v5
    :try_end_59
    .catchall {:try_start_10 .. :try_end_59} :catchall_57

    throw v2

    .restart local v0       #ident:J
    :cond_5a
    move v4, v2

    .line 409
    goto :goto_3c

    .line 414
    :cond_5c
    const/4 v2, 0x1

    :try_start_5d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/android/server/WimaxService;->sendEnableMessage(ZZI)V

    .line 415
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_5d .. :try_end_65} :catchall_57

    move v2, v3

    .line 416
    goto :goto_c
.end method

.method public setFactoryDefault(I)Z
    .registers 3
    .parameter "nType"

    .prologue
    .line 1104
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 1106
    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 1107
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->OdbDefaultReq()Z

    move-result v0

    .line 1109
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setMaxTemperature(I)Z
    .registers 4
    .parameter "temp"

    .prologue
    .line 2132
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2133
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wimax_max_radio_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2134
    const/4 v1, 0x1

    return v1
.end method

.method public setMinTemperature(I)Z
    .registers 4
    .parameter "temp"

    .prologue
    .line 2126
    iget-object v1, p0, Lcom/android/server/WimaxService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2127
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wimax_min_radio_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2128
    const/4 v1, 0x1

    return v1
.end method

.method public setMruWorking(Z)V
    .registers 3
    .parameter "bWorking"

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iput-boolean p1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    .line 1056
    return-void
.end method

.method public setRoamingEnabled(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2142
    invoke-static {p1}, Landroid/net/fourG/wimax/WimaxNative;->setRoamingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setVirtualIdleWhileAPsleep(B)I
    .registers 4
    .parameter "bMode"

    .prologue
    .line 1114
    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    .line 1115
    const/4 v0, 0x1

    .line 1119
    .local v0, enable:Z
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/server/WimaxService;->persistNetworkConnectionEnabled(Z)V

    .line 1120
    sput-byte p1, Lcom/android/server/WimaxService;->mModeWhieAPsleep:B

    .line 1121
    const/4 v1, 0x0

    return v1

    .line 1117
    .end local v0           #enable:Z
    :cond_b
    const/4 v0, 0x0

    .restart local v0       #enable:Z
    goto :goto_4
.end method

.method public setWimaxMode(IZ)I
    .registers 7
    .parameter "nMode"
    .parameter "enable"

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 719
    iget-boolean v1, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v1, :cond_29

    const-string v1, "WimaxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWimaxMode nMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_29
    const/4 v0, -0x1

    .line 723
    .local v0, nRet:I
    packed-switch p1, :pswitch_data_56

    .line 745
    :cond_2d
    :goto_2d
    return v0

    .line 725
    :pswitch_2e
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->getNoBackoff()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 726
    iget-object v1, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetNoBackOff(Z)V

    goto :goto_2d

    .line 729
    :pswitch_3d
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsTetheredmode:Z

    .line 730
    const/4 v0, 0x0

    .line 731
    invoke-static {p2}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    goto :goto_2d

    .line 734
    :pswitch_44
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsBackhaulMode:Z

    .line 735
    invoke-static {p2}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    goto :goto_2d

    .line 739
    :pswitch_4a
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->get4GState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2d

    .line 740
    sput-boolean p2, Lcom/android/server/WimaxService;->mIsDMmode:Z

    .line 741
    const/4 v0, 0x0

    goto :goto_2d

    .line 723
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_3d
        :pswitch_44
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public setWimaxStatus(I)V
    .registers 3
    .parameter "wimaxStatus"

    .prologue
    .line 595
    invoke-direct {p0}, Lcom/android/server/WimaxService;->enforceChangePermission()V

    .line 596
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/WimaxService;->setWimaxEnabledState(II)V

    .line 597
    return-void
.end method

.method public setWorkModeState(I)Z
    .registers 3
    .parameter "workMode"

    .prologue
    .line 1011
    const/4 v0, 0x1

    return v0
.end method

.method public startScan(Z)Z
    .registers 5
    .parameter "bUserReq"

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/android/server/WimaxService;->m_bLog:Z

    if-eqz v0, :cond_2a

    const-string v0, "WimaxService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startScan] bUserReq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nScanAttempt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget v2, v2, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_2a
    sget-object v0, Lcom/android/server/WimaxService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0, v0}, Lcom/android/server/WimaxService;->acquire_WakeLock(Landroid/os/PowerManager$WakeLock;)V

    .line 893
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 894
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->scanCommand()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 895
    if-eqz p1, :cond_44

    .line 896
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->clearRetryFlag()V

    .line 902
    :cond_44
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    iget v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 903
    const/4 v0, 0x1

    .line 907
    :goto_4d
    return v0

    .line 905
    :cond_4e
    iget-object v0, p0, Lcom/android/server/WimaxService;->mWimaxStateTracker:Landroid/net/fourG/wimax/WimaxStateTracker;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    .line 906
    invoke-virtual {p0}, Lcom/android/server/WimaxService;->release_sWakeLock()V

    .line 907
    const/4 v0, 0x0

    goto :goto_4d
.end method
