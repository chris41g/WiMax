.class public Landroid/net/fourG/wimax/WimaxStateTracker;
.super Landroid/os/Handler;
.source "WimaxStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/fourG/wimax/WimaxStateTracker$1;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;,
        Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;,
        Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    }
.end annotation


# static fields
.field public static final ACTION_WIMAX_DHCP_RENEW:Ljava/lang/String; = "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x2

.field private static final EVENT_AFTER_VI_REQ_NEED_DELAY:I = 0x6

.field private static final EVENT_AUTH_FAIL:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x5

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0x9

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x3

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x2

.field private static final EVENT_IP_RENEW:I = 0xa

.field private static final EVENT_LINK_WEAK_INFO:I = 0xe

.field private static final EVENT_MOCALL_FAIL:I = 0x10

.field private static final EVENT_MOCALL_INFO:I = 0xf

.field private static final EVENT_OMADM_RESP_DATA:I = 0xc

.field private static final EVENT_POLL_INTERVAL:I = 0x4

.field private static final EVENT_RADIO_INFO_RESP_DATA:I = 0xd

.field private static final EVENT_SCAN_DELAY:I = 0x7

.field private static final EVENT_VI_REQ:I = 0x8

.field private static final EVENT_WIMAX_STATE_CHANGED:I = 0x1

.field private static ICON_WIMAX_CONNECTED:I = 0x0

.field private static ICON_WIMAX_DISCONNECTED:I = 0x0

.field private static LS:Ljava/lang/String; = null

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIMAX"

.field private static final PDA:[B = null

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WimaxStateTracker"

.field private static final USB_PATH:Ljava/lang/String; = "/sys/class/sec/switch/usb_sel"

.field private static final WIMAX_DHCP_RENEW_INTERVAL:I = 0x0

.field private static final WiMAX:[B = null

.field private static final mRunStateNames:[Ljava/lang/String; = null

.field private static final m_nwaitLU:I = 0x5

.field private static nOdbReqCount:I

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private WIMAX_ENTRY_DELAY:I

.field private WIMAX_SCAN_ATTEMPT_TIMEOUT:I

.field private WIMAX_SCAN_RETRY_SECONDS:I

.field private isHaveLinkInfo:Z

.field private isIdleState:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mCsHandler:Landroid/os/Handler;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDhcpEnd:J

.field private mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

.field private mDhcpRenewIntent:Landroid/app/PendingIntent;

.field private mDhcpStart:J

.field private mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

.field private mDiffDhcpTime:I

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field public mIsTetheredmode:Z

.field private mLastState:Landroid/net/NetworkInfo$State;

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field public mModemReset:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mObtainingIpAddress:Z

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mReleaseWakeLockCallback:Ljava/lang/Runnable;

.field private mRunState:I

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mTetheredModeUsbPlugged:Z

.field private mTornDownByConnMgr:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/fourG/wimax/Wimax4GManager;

.field private mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

.field private mWimaxLinkState:I

.field private mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

.field private mWimaxNotifyManager:Landroid/app/NotificationManager;

.field private mWimaxSettingIntent:Landroid/app/PendingIntent;

.field private mWimaxState:Landroid/net/fourG/wimax/WimaxState;

.field private mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

.field private mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

.field private mWimaxTemperature:I

.field private m_bEntryDelaySet:Z

.field private m_bExitCriteria:Z

.field private m_bLog:Z

.field public m_bMruWorking:Z

.field private m_bNoBackOff:Z

.field public m_bPoweroff:Z

.field private m_bScreenOff:Z

.field public m_bSkipEntryDelayOnce:Z

.field public m_bSkipEntryMet:Z

.field private m_bUserDisconnect:Z

.field private m_isBootCompleted:Z

.field private m_nAutoConnectEnabled:I

.field private mnOldIP:I

.field private nOldSignalLevel:I

.field public nRetryFlag:I

.field public nScanAttempt:I

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 200
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Starting"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Running"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    .line 211
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    .line 215
    const/4 v0, 0x0

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 227
    new-array v0, v4, [B

    fill-array-data v0, :array_36

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->PDA:[B

    .line 228
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_3c

    sput-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->WiMAX:[B

    .line 230
    sput v3, Landroid/net/fourG/wimax/WimaxStateTracker;->nOdbReqCount:I

    return-void

    .line 227
    :array_36
    .array-data 0x1
        0x50t
        0x44t
        0x41t
        0x0t
    .end array-data

    .line 228
    :array_3c
    .array-data 0x1
        0x57t
        0x49t
        0x4dt
        0x41t
        0x58t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 16
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x2

    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 103
    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    .line 108
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    .line 110
    iput v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_nAutoConnectEnabled:I

    .line 155
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 156
    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 157
    sget-object v3, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 158
    sget-object v3, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 167
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 170
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 175
    iput-wide v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 176
    iput-wide v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 177
    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 178
    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I

    .line 179
    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 180
    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxLinkState:I

    .line 182
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 183
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 184
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 188
    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 189
    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 190
    iput v11, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 191
    const/16 v3, 0x78

    iput v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 192
    const/16 v3, 0x12c

    iput v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 224
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    .line 225
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTetheredModeUsbPlugged:Z

    .line 231
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    .line 232
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    .line 233
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 234
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 235
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 237
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 238
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 239
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 240
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryMet:Z

    .line 242
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 264
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 265
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 296
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    .line 297
    new-instance v3, Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {v3}, Landroid/net/fourG/wimax/Wimax4GInfo;-><init>()V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    .line 298
    new-instance v3, Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-direct {v3, p0}, Landroid/net/fourG/wimax/WimaxMonitor;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    .line 299
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 300
    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 302
    new-instance v3, Landroid/net/NetworkInfo;

    const/4 v4, 0x6

    const-string v5, "WIMAX"

    const-string v6, ""

    invoke-direct {v3, v4, v7, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 303
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 311
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 314
    new-instance v3, Landroid/net/DhcpInfoInternal;

    invoke-direct {v3}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    .line 315
    iput v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 317
    const-string v3, "wimax.interface"

    const-string v4, "uwbr0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 318
    new-array v3, v11, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dhcp."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dns2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    sput-object v3, Landroid/net/fourG/wimax/WimaxStateTracker;->sDnsPropNames:[Ljava/lang/String;

    .line 322
    const-string v3, "batteryinfo"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 324
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.server.Wimax4GManager.action.WIMAX_DHCP_RENEW"

    invoke-direct {v0, v3, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 326
    .local v0, DhcpRenewIntent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v3, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    .line 328
    const-string v3, "network_management"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 329
    .local v1, b:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    .line 334
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    .line 335
    new-instance v3, Landroid/app/Notification;

    sget v4, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    invoke-direct {v3, v4, v12, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    .line 336
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIMAX_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v7, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxSettingIntent:Landroid/app/PendingIntent;

    .line 338
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "stat_sys_data_wimax_signal_3_fully"

    const-string v5, "drawable"

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sput v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    .line 339
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "stat_sys_data_wimax_signal_disconnected"

    const-string v5, "drawable"

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sput v3, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    .line 341
    return-void
.end method

.method private RetryProcess()V
    .registers 10

    .prologue
    const/4 v3, -0x1

    const-wide/16 v7, 0xbb8

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, 0x6

    .line 1431
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1432
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-eqz v1, :cond_36

    .line 1433
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_18

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] m_bNoBackOff --return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    :cond_18
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1435
    invoke-static {v3, v5}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1436
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1437
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_2f

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_2f
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1440
    :cond_32
    invoke-virtual {p0, v4, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 1505
    :goto_35
    return-void

    .line 1446
    :cond_36
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 1447
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_47

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] mTornDownByConnMgr && mWM.isWiFiConnect()--return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_47
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-direct {p0, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 1449
    :cond_50
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1450
    invoke-static {v3, v5}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1451
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 1452
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_67

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    :cond_67
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1455
    :cond_6a
    invoke-virtual {p0, v4, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_35

    .line 1459
    :cond_6e
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bMruWorking:Z

    if-eqz v1, :cond_83

    .line 1460
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_7d

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] m_bMruWorking --return"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_7d
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    goto :goto_35

    .line 1466
    :cond_83
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    if-eqz v1, :cond_97

    .line 1467
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_92

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] >>>>>>>>>>>> About to ENTRY to RetryProcess <<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    :cond_92
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 1469
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1472
    :cond_97
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_a2

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] >>>>>>>>>>>> WELCOME to RetryProcess <<<<<<<<<<<<<<<<<<"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    :cond_a2
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b4

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_bf

    .line 1476
    :cond_b4
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_bf

    const-string v1, "WimaxStateTracker"

    const-string v2, "BACKHAUL mode......!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_bf
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_e3

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RetryProcess] ++++ nRetryFlag =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    :cond_e3
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_107

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[RetryProcess] ++++ nScanAttempt =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_107
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ge v1, v2, :cond_158

    .line 1483
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_13d

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_13d
    invoke-virtual {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_151

    .line 1485
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_14e

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_14e
    invoke-virtual {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1488
    :cond_151
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v6, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_35

    .line 1490
    :cond_158
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 1491
    .local v0, nWaitTime:I
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_183

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ++++"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    :cond_183
    const/16 v1, 0x708

    if-gt v0, v1, :cond_1ac

    .line 1493
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1497
    :goto_18d
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1498
    invoke-static {v0, v5}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1499
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 1500
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_1a4

    const-string v1, "WimaxStateTracker"

    const-string v2, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    :cond_1a4
    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1503
    :cond_1a7
    invoke-virtual {p0, v4, v7, v8}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_35

    .line 1495
    :cond_1ac
    const/16 v0, 0x708

    goto :goto_18d
.end method

.method static synthetic access$100(Landroid/net/fourG/wimax/WimaxStateTracker;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/LinkCapabilities;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/LinkCapabilities;)Landroid/net/LinkCapabilities;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/NetworkInfo$State;)Landroid/net/NetworkInfo$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLastState:Landroid/net/NetworkInfo$State;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/fourG/wimax/WimaxStateTracker;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/PendingIntent;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/app/AlarmManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/DhcpInfoInternal;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/fourG/wimax/WimaxStateTracker;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I

    return v0
.end method

.method static synthetic access$602(Landroid/net/fourG/wimax/WimaxStateTracker;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mnOldIP:I

    return p1
.end method

.method static synthetic access$700(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/net/fourG/wimax/WimaxStateTracker;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide v0
.end method

.method static synthetic access$802(Landroid/net/fourG/wimax/WimaxStateTracker;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-wide p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    return-wide p1
.end method

.method static synthetic access$900(Landroid/net/fourG/wimax/WimaxStateTracker;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$902(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method private checkUseStaticIp()Z
    .registers 27

    .prologue
    .line 2384
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 2387
    .local v11, cr:Landroid/content/ContentResolver;
    const/16 v20, 0x0

    .line 2388
    .local v20, msg:Ljava/lang/String;
    const/4 v7, 0x0

    .line 2389
    .local v7, backup_ip:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2390
    .local v6, backup_gateway:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2391
    .local v8, backup_netmask:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2392
    .local v4, backup_dns1:Ljava/lang/String;
    const/4 v5, 0x0

    .line 2394
    .local v5, backup_dns2:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2395
    .local v9, br:Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 2398
    .local v15, fis:Ljava/io/FileInputStream;
    :try_start_1b
    new-instance v16, Ljava/io/FileInputStream;

    const-string v23, "/data/wimax_ip.txt"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_26} :catch_149

    .line 2404
    .end local v15           #fis:Ljava/io/FileInputStream;
    .local v16, fis:Ljava/io/FileInputStream;
    const-string v2, "0.0.0.0"

    .line 2405
    .local v2, EMPTY_IP:Ljava/lang/String;
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v23, Landroid/net/LinkAddress;

    const-string v24, "0.0.0.0"

    invoke-static/range {v24 .. v24}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v24

    const/16 v25, 0x0

    invoke-direct/range {v23 .. v25}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v3, v0, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 2408
    .local v3, EMPTY_ROUTE:Landroid/net/RouteInfo;
    const-string v19, "0.0.0.0"

    .line 2409
    .local v19, ip:Ljava/lang/String;
    const/16 v21, 0x0

    .line 2410
    .local v21, prefixLength:I
    const-string v12, "0.0.0.0"

    .line 2411
    .local v12, dns1:Ljava/lang/String;
    const-string v13, "0.0.0.0"

    .line 2412
    .local v13, dns2:Ljava/lang/String;
    move-object/from16 v22, v3

    .line 2416
    .local v22, route:Landroid/net/RouteInfo;
    :try_start_4a
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v23

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5a
    .catchall {:try_start_4a .. :try_end_5a} :catchall_1ff
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_5a} :catch_1d9

    .line 2417
    .end local v9           #br:Ljava/io/BufferedReader;
    .local v10, br:Ljava/io/BufferedReader;
    :try_start_5a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2418
    if-eqz v20, :cond_15c

    .line 2421
    move-object/from16 v19, v20

    .line 2426
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2427
    if-eqz v20, :cond_177

    .line 2432
    invoke-static/range {v20 .. v20}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/net/RouteInfo;->makeHostRoute(Ljava/net/InetAddress;)Landroid/net/RouteInfo;

    move-result-object v22

    .line 2441
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2442
    if-eqz v20, :cond_194

    .line 2445
    invoke-static/range {v20 .. v20}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v21

    .line 2459
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2460
    if-eqz v20, :cond_1b3

    .line 2463
    move-object/from16 v12, v20

    .line 2464
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_ae

    const-string v23, "WimaxStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ":)------dns1-msg--------Use DHCP for WiMAX\n "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    :cond_ae
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v20

    .line 2484
    if-eqz v20, :cond_1d5

    .line 2487
    move-object/from16 v13, v20

    .line 2488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_e2

    const-string v23, "WimaxStateTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, ":)------dns21-msg--------Use DHCP for WiMAX\n "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_5a .. :try_end_e2} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_e2} :catch_2a2

    .line 2522
    :cond_e2
    :goto_e2
    :try_start_e2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2523
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e8} :catch_234

    .line 2532
    new-instance v23, Landroid/net/DhcpInfoInternal;

    invoke-direct/range {v23 .. v23}, Landroid/net/DhcpInfoInternal;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    .line 2533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    iput-object v0, v1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 2534
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    .line 2535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput v0, v1, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 2536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v12, v0, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 2537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iput-object v13, v0, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 2541
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_13b

    const-string v23, "WimaxStateTracker"

    const-string v24, "Use Static IP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :cond_13b
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    .line 2543
    const/16 v23, 0x1

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v2           #EMPTY_IP:Ljava/lang/String;
    .end local v3           #EMPTY_ROUTE:Landroid/net/RouteInfo;
    .end local v10           #br:Ljava/io/BufferedReader;
    .end local v12           #dns1:Ljava/lang/String;
    .end local v13           #dns2:Ljava/lang/String;
    .end local v19           #ip:Ljava/lang/String;
    .end local v21           #prefixLength:I
    .end local v22           #route:Landroid/net/RouteInfo;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :goto_148
    return v23

    .line 2399
    :catch_149
    move-exception v17

    .line 2400
    .local v17, fnfe:Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_159

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)-------------------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    :cond_159
    const/16 v23, 0x0

    goto :goto_148

    .line 2423
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v17           #fnfe:Ljava/io/FileNotFoundException;
    .restart local v2       #EMPTY_IP:Ljava/lang/String;
    .restart local v3       #EMPTY_ROUTE:Landroid/net/RouteInfo;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v12       #dns1:Ljava/lang/String;
    .restart local v13       #dns2:Ljava/lang/String;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    .restart local v19       #ip:Ljava/lang/String;
    .restart local v21       #prefixLength:I
    .restart local v22       #route:Landroid/net/RouteInfo;
    :cond_15c
    :try_start_15c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16b

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------ip-none----------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16b
    .catchall {:try_start_15c .. :try_end_16b} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_16b} :catch_2a2

    .line 2424
    :cond_16b
    const/16 v23, 0x0

    .line 2522
    :try_start_16d
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2523
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_173} :catch_28a

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2424
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_148

    .line 2435
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_177
    :try_start_177
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_186

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------gateway-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :cond_186
    const-string v19, "0.0.0.0"
    :try_end_188
    .catchall {:try_start_177 .. :try_end_188} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_188} :catch_2a2

    .line 2439
    const/16 v23, 0x0

    .line 2522
    :try_start_18a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2523
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18a .. :try_end_190} :catch_276

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2439
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_148

    .line 2447
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_194
    :try_start_194
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1a3

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------netmask-none-----Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :cond_1a3
    move-object/from16 v22, v3

    .line 2455
    const-string v19, "0.0.0.0"
    :try_end_1a7
    .catchall {:try_start_194 .. :try_end_1a7} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_1a7} :catch_2a2

    .line 2457
    const/16 v23, 0x0

    .line 2522
    :try_start_1a9
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2523
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a9 .. :try_end_1af} :catch_262

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2457
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto :goto_148

    .line 2466
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_1b3
    :try_start_1b3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1c2

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)------dns1-none--------Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    :cond_1c2
    const-string v19, "0.0.0.0"
    :try_end_1c4
    .catchall {:try_start_1b3 .. :try_end_1c4} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1c4} :catch_2a2

    .line 2478
    move-object/from16 v22, v3

    .line 2479
    const/16 v21, 0x0

    .line 2481
    const/16 v23, 0x0

    .line 2522
    :try_start_1ca
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 2523
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1ca .. :try_end_1d0} :catch_24e

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 2481
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_148

    .line 2492
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_1d5
    :try_start_1d5
    const-string v13, "0.0.0.0"
    :try_end_1d7
    .catchall {:try_start_1d5 .. :try_end_1d7} :catchall_29e
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1d7} :catch_2a2

    goto/16 :goto_e2

    .line 2494
    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    :catch_1d9
    move-exception v14

    .line 2495
    .local v14, e:Ljava/io/IOException;
    :goto_1da
    :try_start_1da
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1e9

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)-------exception---Use DHCP for WiMAX\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_1e9
    const-string v19, "0.0.0.0"

    .line 2514
    move-object/from16 v22, v3

    .line 2515
    const/16 v21, 0x0

    .line 2516
    const-string v12, "0.0.0.0"

    .line 2517
    const-string v13, "0.0.0.0"
    :try_end_1f3
    .catchall {:try_start_1da .. :try_end_1f3} :catchall_1ff

    .line 2519
    const/16 v23, 0x0

    .line 2522
    :try_start_1f5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 2523
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1fb
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1fb} :catch_220

    move-object/from16 v15, v16

    .line 2519
    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_148

    .line 2521
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catchall_1ff
    move-exception v23

    .line 2522
    :goto_200
    :try_start_200
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 2523
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_206
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_206} :catch_207

    .line 2521
    throw v23

    .line 2524
    :catch_207
    move-exception v18

    .line 2525
    .local v18, ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_217

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_217
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2527
    :goto_21a
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_148

    .line 2524
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v14       #e:Ljava/io/IOException;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_220
    move-exception v18

    .line 2525
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_230

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_230
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_21a

    .line 2524
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v14           #e:Ljava/io/IOException;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    :catch_234
    move-exception v18

    .line 2525
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_244

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_244
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    .line 2527
    :goto_247
    const/16 v23, 0x0

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_148

    .line 2524
    .end local v9           #br:Ljava/io/BufferedReader;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .end local v18           #ioe:Ljava/io/IOException;
    .restart local v10       #br:Ljava/io/BufferedReader;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_24e
    move-exception v18

    .line 2525
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_25e

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_25e
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2524
    .end local v18           #ioe:Ljava/io/IOException;
    :catch_262
    move-exception v18

    .line 2525
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_272

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_272
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2524
    .end local v18           #ioe:Ljava/io/IOException;
    :catch_276
    move-exception v18

    .line 2525
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_286

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_286
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2524
    .end local v18           #ioe:Ljava/io/IOException;
    :catch_28a
    move-exception v18

    .line 2525
    .restart local v18       #ioe:Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    move/from16 v23, v0

    if-eqz v23, :cond_29a

    const-string v23, "WimaxStateTracker"

    const-string v24, ":)----- wimax_static_ip_config file close error\n"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_29a
    invoke-virtual/range {v18 .. v18}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_247

    .line 2521
    .end local v18           #ioe:Ljava/io/IOException;
    :catchall_29e
    move-exception v23

    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_200

    .line 2494
    .end local v9           #br:Ljava/io/BufferedReader;
    .restart local v10       #br:Ljava/io/BufferedReader;
    :catch_2a2
    move-exception v14

    move-object v9, v10

    .end local v10           #br:Ljava/io/BufferedReader;
    .restart local v9       #br:Ljava/io/BufferedReader;
    goto/16 :goto_1da
.end method

.method private configureLinkProperties()V
    .registers 4

    .prologue
    .line 2607
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 2608
    :try_start_3
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2609
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_36

    .line 2610
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2611
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_35

    .line 2612
    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureLinkProperties : Link configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    :cond_35
    return-void

    .line 2609
    :catchall_36
    move-exception v0

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v0
.end method

.method private getMaxDhcpRetries()I
    .registers 2

    .prologue
    .line 2550
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    return v0
.end method

.method private getValue()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 404
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_2a

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue() called : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wimax_networks_available_notification_on"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_2a
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wimax_networks_available_notification_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_39

    :goto_38
    return v0

    :cond_39
    move v0, v1

    goto :goto_38
.end method

.method private declared-synchronized isDriverStopped()Z
    .registers 3

    .prologue
    .line 692
    monitor-enter p0

    :try_start_1
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_10

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    :cond_b
    const/4 v0, 0x1

    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isWifiConnected()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2619
    :try_start_2
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2620
    .local v0, connManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_16

    .line 2621
    const-string v4, "WimaxStateTracker"

    const-string v5, "isWifiConnected connManager == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    :cond_15
    :goto_15
    return v3

    .line 2625
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    :cond_16
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2626
    .local v2, mWifi:Landroid/net/NetworkInfo;
    if-nez v2, :cond_3f

    .line 2627
    const-string v4, "WimaxStateTracker"

    const-string v5, "isWifiConnected mWifi == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_24} :catch_25

    goto :goto_15

    .line 2634
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v2           #mWifi:Landroid/net/NetworkInfo;
    :catch_25
    move-exception v1

    .line 2635
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 2631
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    .restart local v2       #mWifi:Landroid/net/NetworkInfo;
    :cond_3f
    :try_start_3f
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_25

    move-result v5

    if-eqz v5, :cond_15

    move v3, v4

    .line 2632
    goto :goto_15
.end method

.method private noteRunState()V
    .registers 1

    .prologue
    .line 706
    return-void
.end method

.method private static putAddress(Ljava/lang/StringBuffer;I)V
    .registers 5
    .parameter "buf"
    .parameter "addr"

    .prologue
    const/16 v2, 0x2e

    .line 1156
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    ushr-int/lit8 p1, p1, 0x8

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1160
    return-void
.end method

.method private declared-synchronized requestConnectionTime(Landroid/net/fourG/wimax/Wimax4GInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 1794
    monitor-enter p0

    const/4 v1, 0x0

    .line 1797
    .local v1, rev_time:Ljava/lang/String;
    :try_start_2
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v1

    .line 1798
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1800
    .local v0, newTime:I
    invoke-direct {p0, v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendConnectionTimeChangeBroadcast(I)V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 1801
    monitor-exit p0

    return-void

    .line 1794
    .end local v0           #newTime:I
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V
    .registers 19
    .parameter "info"

    .prologue
    .line 1700
    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2d

    if-eqz v14, :cond_9

    .line 1786
    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    .line 1704
    :cond_9
    const/4 v9, 0x0

    .line 1705
    .local v9, sBsid:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, nTxpower:I
    const/4 v2, 0x0

    .local v2, nCF:I
    const/4 v11, 0x0

    .local v11, sRssi:I
    const/4 v10, 0x0

    .local v10, sCinr:I
    const/4 v13, 0x0

    .local v13, ulspeed:I
    const/4 v1, 0x0

    .line 1706
    .local v1, dlspeed:I
    const/4 v7, 0x0

    .local v7, rev_info:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1708
    .local v8, rev_time:Ljava/lang/String;
    :try_start_12
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getLinkInfo()Ljava/lang/String;

    move-result-object v7

    .line 1709
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getConnectionTime()Ljava/lang/String;

    move-result-object v8

    .line 1710
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getRadioInfo()Z

    .line 1711
    if-nez v7, :cond_30

    .line 1712
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v14, :cond_7

    const-string v14, "WimaxStateTracker"

    const-string v15, "[requestPolledInfo] getLinkInfo() returns null"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2d

    goto :goto_7

    .line 1700
    .end local v1           #dlspeed:I
    .end local v2           #nCF:I
    .end local v4           #nTxpower:I
    .end local v7           #rev_info:Ljava/lang/String;
    .end local v8           #rev_time:Ljava/lang/String;
    .end local v9           #sBsid:Ljava/lang/String;
    .end local v10           #sCinr:I
    .end local v11           #sRssi:I
    .end local v13           #ulspeed:I
    :catchall_2d
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1715
    .restart local v1       #dlspeed:I
    .restart local v2       #nCF:I
    .restart local v4       #nTxpower:I
    .restart local v7       #rev_info:Ljava/lang/String;
    .restart local v8       #rev_time:Ljava/lang/String;
    .restart local v9       #sBsid:Ljava/lang/String;
    .restart local v10       #sCinr:I
    .restart local v11       #sRssi:I
    .restart local v13       #ulspeed:I
    :cond_30
    :try_start_30
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v14, "#"

    invoke-direct {v12, v7, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    .local v12, st:Ljava/util/StringTokenizer;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v14, :cond_55

    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[rev_info] "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_55
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1719
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1720
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1721
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1722
    const/16 v14, -0x7b

    if-eq v11, v14, :cond_7

    .line 1723
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1724
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1725
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1726
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1727
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1728
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1729
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1730
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1731
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_b7

    .line 1732
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1743
    :cond_b7
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getBSID()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_cb

    .line 1744
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1745
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendBSIDChangeBroadcast(Ljava/lang/String;)V

    .line 1749
    :cond_cb
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getFREQ()I

    move-result v14

    if-eq v14, v2, :cond_db

    .line 1750
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1751
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendFrequencyChangeBroadcast(I)V

    .line 1756
    :cond_db
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getRssi()I

    move-result v6

    .line 1757
    .local v6, oldRssi:I
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getCinr()I

    move-result v5

    .line 1759
    .local v5, oldCinr:I
    if-ne v6, v11, :cond_e7

    if-eq v5, v10, :cond_131

    .line 1760
    :cond_e7
    if-eq v6, v11, :cond_f3

    .line 1761
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1762
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSignalChangeBroadcast(I)V

    .line 1764
    :cond_f3
    if-eq v5, v10, :cond_ff

    .line 1765
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1766
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendCINRSignalChangeBroadcast(I)V

    .line 1772
    :cond_ff
    const/4 v14, 0x4

    invoke-static {v11, v10, v14}, Landroid/net/fourG/wimax/Wimax4GManager;->calculateSignalLevel(III)I

    move-result v3

    .line 1773
    .local v3, nNewSignalLevel:I
    move-object/from16 v0, p0

    iget v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    if-eq v14, v3, :cond_131

    .line 1774
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v14, :cond_128

    const-string v14, "WimaxStateTracker"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "nNewSignalLevel ====> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    :cond_128
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSignalLevelChangeBroadcast(I)V

    .line 1776
    move-object/from16 v0, p0

    iput v3, v0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1780
    .end local v3           #nNewSignalLevel:I
    :cond_131
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getTxPower()I

    move-result v14

    if-eq v14, v4, :cond_13c

    .line 1781
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1783
    :cond_13c
    invoke-virtual/range {p1 .. p1}, Landroid/net/fourG/wimax/Wimax4GInfo;->getLinkSpeed()I

    move-result v14

    if-eq v14, v13, :cond_7

    .line 1784
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/net/fourG/wimax/Wimax4GInfo;->setLinkSpeed(I)V
    :try_end_147
    .catchall {:try_start_30 .. :try_end_147} :catchall_2d

    goto/16 :goto_7
.end method

.method private sendBSIDChangeBroadcast(Ljava/lang/String;)V
    .registers 5
    .parameter "newBsid"

    .prologue
    .line 1804
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1805
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.NET_4G_HANDOVER_COMPLETE_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1806
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newBSID"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1807
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1809
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1d
    return-void
.end method

.method private sendCINRSignalChangeBroadcast(I)V
    .registers 4
    .parameter "newCINR"

    .prologue
    .line 1838
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1839
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.CINR_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1840
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newCINR"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1841
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1843
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendConnectionTimeChangeBroadcast(I)V
    .registers 4
    .parameter "newTime"

    .prologue
    .line 1908
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1909
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.TIME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1910
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1911
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1913
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendDHCPTimeBroadcast(I)V
    .registers 4
    .parameter "newDHCPTime"

    .prologue
    .line 1920
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1921
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_DHCP_TIME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1922
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newDHCPTime"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1923
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1925
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendFrequencyChangeBroadcast(I)V
    .registers 4
    .parameter "newFreq"

    .prologue
    .line 1812
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1813
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.FREQUENCY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1814
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newFrequency"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1815
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1817
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendModeChangeBroadcast(I)V
    .registers 4
    .parameter "usbMode"

    .prologue
    .line 1857
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1858
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1859
    const-string v1, "usbMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1860
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1861
    return-void
.end method

.method private sendNetworkStateChangeBroadcast()V
    .registers 5

    .prologue
    .line 1882
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_37

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testhere sendNetworkStateChangeBroadcast  entered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1883
    :cond_37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.wimax.NETWORK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1887
    const-string v1, "linkProperties"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1888
    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1889
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_62

    .line 1890
    const-string v1, "fourG_info"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1892
    :cond_62
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1893
    return-void
.end method

.method private sendSignalChangeBroadcast(I)V
    .registers 4
    .parameter "newRssi"

    .prologue
    .line 1825
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1827
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newRSSI"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1830
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendSignalLevelChangeBroadcast(I)V
    .registers 4
    .parameter "newSignalLevel"

    .prologue
    .line 1849
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1850
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1851
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newSignalLevel"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1852
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1854
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    return-void
.end method

.method private sendSupplicantStateChangeBroadcast()V
    .registers 4

    .prologue
    .line 1896
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_b

    const-string v1, "WimaxStateTracker"

    const-string v2, "sendSupplicantStateChangeBroadcast  entered: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_b
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.NET_4G_SUPPLICANT_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1898
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1899
    const-string v1, "4g_supplicant_state"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->getSupplicantState()Landroid/net/fourG/net4GSupplicantState;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1900
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1901
    return-void
.end method

.method private sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V
    .registers 7
    .parameter "respDataAray"
    .parameter "nRetType"
    .parameter "odbMngState"

    .prologue
    .line 1958
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1959
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxOMADMRespData"

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1960
    const-string v1, "WimaxOMADMRespState"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1961
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1962
    return-void
.end method

.method private sendWimaxRadioInfoTemperatureResponseBroadcast()V
    .registers 5

    .prologue
    .line 1965
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 1967
    .local v1, radioInfoObj:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->getCurrent()I

    move-result v2

    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 1968
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->isRadioOverheat()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    .line 1969
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.RADIO_OVERHEAT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1970
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "radio_temperature"

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1971
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1973
    .end local v0           #intent:Landroid/content/Intent;
    :cond_28
    return-void
.end method

.method private sendWimaxStateChangeBroadcast()V
    .registers 5

    .prologue
    .line 1864
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1865
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1870
    const-string v1, "WimaxState"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1871
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v1, v2, :cond_29

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v1, v2, :cond_38

    .line 1873
    :cond_29
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v1, :cond_38

    .line 1874
    const-string v1, "WimaxStateDetail"

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1876
    :cond_38
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_59

    const-string v1, "mytag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWimaxStateChangeBroadcast intent 1 - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1877
    :cond_59
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_7a

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendWimaxStateChangeBroadcast intent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1878
    :cond_7a
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1879
    return-void
.end method

.method private declared-synchronized setPollTimer()V
    .registers 4

    .prologue
    .line 685
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 689
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 686
    :cond_7
    const/4 v0, 0x4

    :try_start_8
    invoke-virtual {p0, v0}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 687
    const/4 v0, 0x4

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_15

    goto :goto_5

    .line 685
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setTornDownByConnMgr(Z)V
    .registers 3
    .parameter "flag"

    .prologue
    .line 487
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 488
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 489
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 490
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
    .registers 10
    .parameter "addrString"

    .prologue
    const/4 v6, -0x1

    .line 2363
    :try_start_1
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2364
    .local v5, parts:[Ljava/lang/String;
    array-length v7, v5

    const/4 v8, 0x4

    if-eq v7, v8, :cond_c

    .line 2377
    .end local v5           #parts:[Ljava/lang/String;
    :goto_b
    return v6

    .line 2369
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_c
    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2370
    .local v0, a:I
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v1, v7, 0x8

    .line 2371
    .local v1, b:I
    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    shl-int/lit8 v2, v7, 0x10

    .line 2372
    .local v2, c:I
    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_2b} :catch_33

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .line 2374
    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    goto :goto_b

    .line 2375
    .end local v0           #a:I
    .end local v1           #b:I
    .end local v2           #c:I
    .end local v3           #d:I
    .end local v5           #parts:[Ljava/lang/String;
    :catch_33
    move-exception v4

    .line 2376
    .local v4, ex:Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_b
.end method

.method private updateNetworkInfo()V
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 600
    return-void
.end method

.method private updateWimaxNotiMsg()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 354
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_21

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() within updateWimaxNotiMsg() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_21
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 356
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_8a

    .line 371
    :cond_34
    :goto_34
    return-void

    .line 359
    :pswitch_35
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_55

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4G Network Connected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_55
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v1, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_CONNECTED:I

    const-string v2, "4G network connected"

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 365
    :pswitch_5f
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_7f

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4G Network Disconnected :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_7f
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    sget v1, Landroid/net/fourG/wimax/WimaxStateTracker;->ICON_WIMAX_DISCONNECTED:I

    const-string v2, "4G network disconnected"

    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_34

    .line 356
    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_35
        :pswitch_5f
    .end packed-switch
.end method


# virtual methods
.method public SendWimaxLinkStateChangeBroadcast()V
    .registers 5

    .prologue
    .line 1145
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    if-ne v1, v2, :cond_f

    .line 1153
    :cond_e
    :goto_e
    return-void

    .line 1148
    :cond_f
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.LINK_STATE_DETAIL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1150
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "link_state_detail"

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v1, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1151
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_e
.end method

.method public SetNoBackOff(Z)V
    .registers 2
    .parameter "bNoBackOff"

    .prologue
    .line 1423
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    .line 1424
    return-void
.end method

.method public SetScreenOff(Z)V
    .registers 4
    .parameter "bScreenOff"

    .prologue
    .line 1679
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    .line 1681
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v0, :cond_7

    .line 1693
    :cond_6
    :goto_6
    return-void

    .line 1683
    :cond_7
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->READY:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_27

    .line 1685
    :cond_1f
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-nez v0, :cond_27

    .line 1686
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setLinkInfo(Z)V

    .line 1690
    :cond_27
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    if-eqz v0, :cond_6

    .line 1691
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setLinkInfo(Z)V

    goto :goto_6
.end method

.method public acquire_WakeLock()V
    .registers 4

    .prologue
    .line 720
    :try_start_0
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_5

    .line 730
    :cond_4
    :goto_4
    return-void

    .line 721
    :cond_5
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 722
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock already acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_4

    .line 727
    :catch_19
    move-exception v0

    .line 728
    .local v0, e:Ljava/lang/NullPointerException;
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_4

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock NullPointerException----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 724
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_26
    :try_start_26
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_31

    const-string v1, "WimaxStateTracker"

    const-string v2, "------WakeLock will be acquired----------------"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_31
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_36
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_36} :catch_19

    goto :goto_4
.end method

.method public clearRetryFlag()V
    .registers 5

    .prologue
    const/4 v3, 0x7

    const/4 v2, 0x0

    .line 1508
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_d

    const-string v0, "WimaxStateTracker"

    const-string v1, "[clearRetryFlag] Called ********** "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_d
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1510
    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1511
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1512
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    const-string v1, "[clearRetryFlag] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_22
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1515
    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 1516
    return-void
.end method

.method public configureInterface()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1519
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1521
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v3, :cond_24

    .line 1522
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v3, :cond_23

    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    if-nez v3, :cond_23

    .line 1523
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_1b

    const-string v3, "WimaxStateTracker"

    const-string v4, "[configureInterface] !mHaveIpAddress && !mObtainingIpAddress"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_1b
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1525
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 1573
    :cond_23
    :goto_23
    return-void

    .line 1528
    :cond_24
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-nez v3, :cond_23

    .line 1544
    const/4 v2, 0x0

    .line 1546
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_29
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 1547
    if-eqz v2, :cond_23

    .line 1549
    new-instance v3, Landroid/net/LinkAddress;

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget-object v4, v4, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    const/16 v5, 0x18

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 1551
    const-string v3, "[up]"

    iput-object v3, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 1553
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 1557
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1558
    const/4 v1, 0x2

    .line 1559
    .local v1, event:I
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_23

    const-string v3, "WimaxStateTracker"

    const-string v4, "Static IP configuration succeeded"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_5e} :catch_5f

    goto :goto_23

    .line 1562
    .end local v1           #event:I
    :catch_5f
    move-exception v0

    .line 1563
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_88

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error configuring interface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_88
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1565
    const/4 v1, 0x3

    .line 1566
    .restart local v1       #event:I
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_23

    const-string v3, "WimaxStateTracker"

    const-string v4, "Static IP configuration failed"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public defaultRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 477
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 478
    return-void
.end method

.method public declared-synchronized disconnectAndStop()Z
    .registers 5

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 2119
    monitor-enter p0

    :try_start_3
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_e

    const-string v1, "WimaxStateTracker"

    const-string v2, "[disconnectAndStop] called ****** "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_e
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    if-eq v1, v3, :cond_26

    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_26

    .line 2121
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 2122
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 2125
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 2126
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_2a

    move-result v0

    .line 2142
    :goto_24
    monitor-exit p0

    return v0

    .line 2140
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->releaseWakeLock()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_24

    .line 2119
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;
    .registers 2

    .prologue
    .line 1657
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    return-object v0
.end method

.method public getCurrentWimaxStateDetail()I
    .registers 2

    .prologue
    .line 1661
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->ordinal()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .registers 2

    .prologue
    .line 1653
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .registers 3

    .prologue
    .line 523
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .registers 3

    .prologue
    .line 513
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getNetworkSubtype()I
    .registers 2

    .prologue
    .line 591
    const/4 v0, 0x0

    return v0
.end method

.method public getNoBackoff()Z
    .registers 2

    .prologue
    .line 1419
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    const-string v0, "net.tcp.buffersize.wimax"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1164
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_23

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "testhere [handleMessage] Received msg = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_23
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_4ac

    .line 1416
    :cond_28
    :goto_28
    :pswitch_28
    return-void

    .line 1168
    :pswitch_29
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;

    .line 1170
    .local v3, result:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 1171
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1173
    iget-object v4, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1174
    iget-object v4, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1176
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v4, Landroid/net/fourG/wimax/Wimax4GInfo;->linkStateMap:Ljava/util/EnumMap;

    iget-object v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v4, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GInfo;->setLinkStateDetailed(Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;)V

    .line 1178
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_6a

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] Old state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_6a
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_94

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] New state is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " New detailed info is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_94
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateNetworkInfo()V

    .line 1181
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_b5

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] result(New Wimax State ::: )  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_b5
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;)V

    .line 1183
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    .line 1184
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendSupplicantStateChangeBroadcast()V

    .line 1185
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v4, v5, :cond_28

    .line 1186
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v5, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v4, v5, :cond_d1

    .line 1187
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/16 v5, 0xd

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 1188
    :cond_d1
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->SendWimaxLinkStateChangeBroadcast()V

    goto/16 :goto_28

    .line 1197
    .end local v3           #result:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;
    :pswitch_d6
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    if-ne v5, v4, :cond_f5

    .line 1198
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v4, :cond_e8

    .line 1199
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 1200
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    goto/16 :goto_28

    .line 1202
    :cond_e8
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_28

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ IDLE MODE ^^^^^"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1205
    :cond_f5
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_28

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_POLL_INTERVAL] ^^^^^ DISCONNECTED ^^^^^"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_28

    .line 1209
    :pswitch_102
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    goto/16 :goto_28

    .line 1212
    :pswitch_109
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan()Z

    goto/16 :goto_28

    .line 1215
    :pswitch_110
    invoke-static {v11, v4}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 1216
    invoke-virtual {p0, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_127

    .line 1217
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_124

    const-string v4, "WimaxStateTracker"

    const-string v5, "[EVENT_VI_REQ] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_124
    invoke-virtual {p0, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1220
    :cond_127
    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v9, v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_28

    .line 1230
    :pswitch_12e
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_152

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDhcpInfo.netmask:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget v8, v8, Landroid/net/DhcpInfoInternal;->prefixLength:I

    invoke-static {v8}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_152
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget v6, v6, Landroid/net/DhcpInfoInternal;->prefixLength:I

    invoke-static {v6}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v6

    if-ne v6, v11, :cond_16e

    .line 1233
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_167

    const-string v6, "WimaxStateTracker"

    const-string v7, "SystemProperties.set wimax_route"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_167
    const-string v6, "ctl.start"

    const-string v7, "wimax_route"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    :cond_16e
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    .line 1238
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_19d

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : DhcpEnd is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_19d
    iget-wide v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpEnd:J

    iget-wide v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    sub-long/2addr v6, v8

    long-to-int v6, v6

    iput v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 1242
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_1c9

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage : DHCP Difference is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :cond_1c9
    iget v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1245
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1246
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1249
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget-object v6, v6, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1251
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_211

    const-string v4, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNetworkInfo.getDetailedState(.) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_211
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v6, :cond_27b

    .line 1253
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1254
    iput v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1255
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1256
    sget-object v4, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1257
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1261
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1264
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v5, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1298
    :cond_23b
    :goto_23b
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureLinkProperties()V

    .line 1299
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendNetworkStateChangeBroadcast()V

    .line 1300
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateWimaxNotiMsg()V

    .line 1302
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_262

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[handleMessage] >>> IP configuration << "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_262
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_274

    .line 1305
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wimax.NETWORK_IP_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1308
    :cond_274
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    goto/16 :goto_28

    .line 1269
    :cond_27b
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1276
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    const/4 v6, 0x3

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1277
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1280
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-eqz v4, :cond_23b

    .line 1281
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_299

    const-string v4, "WimaxStateTracker"

    const-string v6, "isIdleState == true"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    :cond_299
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 1283
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 1285
    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1286
    sget-object v4, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Registered:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1287
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->IpObtained()Z

    .line 1288
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1291
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v5, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_23b

    .line 1313
    :pswitch_2bb
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_2c6

    const-string v6, "WimaxStateTracker"

    const-string v7, "[handleMessage] >>> IP configuration...  failed <<< "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_2c6
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1315
    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v6, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1316
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1318
    iput v11, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    .line 1319
    iget v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDiffDhcpTime:I

    invoke-direct {p0, v5}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendDHCPTimeBroadcast(I)V

    .line 1322
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v5, :cond_2ff

    .line 1323
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1324
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2ee

    .line 1325
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1327
    :cond_2ee
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2ff

    .line 1328
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1331
    :cond_2ff
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_312

    .line 1332
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_312

    const-string v4, "WimaxStateTracker"

    const-string v5, "Could not stop DHCP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_312
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1336
    monitor-enter p0

    .line 1337
    :try_start_318
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v4, v5, :cond_324

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v5, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v4, v5, :cond_32f

    .line 1338
    :cond_324
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_32f

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage:EVENT_INTERFACE_CONFIGURATION_FAILED] b4 disconnectWimax()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :cond_32f
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->disconnectWimax()Z

    .line 1340
    monitor-exit p0

    goto/16 :goto_28

    :catchall_335
    move-exception v4

    monitor-exit p0
    :try_end_337
    .catchall {:try_start_318 .. :try_end_337} :catchall_335

    throw v4

    .line 1343
    :pswitch_338
    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3bb

    move v1, v4

    .line 1344
    .local v1, driverStarted:Z
    :goto_33d
    iget-boolean v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v6, :cond_35f

    const-string v6, "WimaxStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleMessage:EVENT_DRIVER_STATE_CHANGED] ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_35f
    if-nez v1, :cond_3b6

    .line 1346
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 1347
    iput-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1349
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 1350
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_382

    .line 1351
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_37d

    const-string v4, "WimaxStateTracker"

    const-string v5, "[EVENT_DRIVER_STATE_CHANGED] removeMessage(EVENT_VI_REQ)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_37d
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1354
    :cond_382
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_398

    .line 1355
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_394

    const-string v4, "WimaxStateTracker"

    const-string v5, "[EVENT_DRIVER_STATE_CHANGED] removeMessage(EVENT_SCAN_DELAY)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_394
    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1366
    :cond_398
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_3a3

    const-string v4, "WimaxStateTracker"

    const-string v5, "!!!!!!!!!!!!!!!!!set DISCONNECTED state When 4G is turned off  before scanning step!!!!!!!!!!!!!!!!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_3a3
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v4, v5, v10, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1370
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v5, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1373
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    .line 1376
    :cond_3b6
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->noteRunState()V

    goto/16 :goto_28

    .end local v1           #driverStarted:Z
    :cond_3bb
    move v1, v5

    .line 1343
    goto :goto_33d

    .line 1379
    :pswitch_3bd
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;

    .line 1380
    .local v0, auth:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_3eb

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] AUTH_FAIL  nErrorCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", strError :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->strError:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    :cond_3eb
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.net.wimax.WIMAX_AUTH_ERROR"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1384
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "auth_error"

    iget v6, v0, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;->nErrorCode:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1385
    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-object v6, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v5, v4}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    .line 1386
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_28

    .line 1389
    .end local v0           #auth:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_407
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/nio/ByteBuffer;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxOMADMResponseBroadcast(Ljava/nio/ByteBuffer;II)V

    goto/16 :goto_28

    .line 1392
    :pswitch_414
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxRadioInfoResponseBroadcast()V

    .line 1393
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxRadioInfoTemperatureResponseBroadcast()V

    goto/16 :goto_28

    .line 1396
    :pswitch_41c
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_440

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] EVENT_LINK_WEAK_INFO : 4G will disconnect. (currentState :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_440
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1398
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    .line 1399
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4, v9}, Landroid/net/fourG/wimax/Wimax4GManager;->setLastError(I)I

    goto/16 :goto_28

    .line 1402
    :pswitch_450
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_45b

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage] EVENT_MOCALL_INFO : wait 5sec. "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_45b
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1404
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_476

    .line 1405
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_471

    const-string v4, "WimaxStateTracker"

    const-string v5, "[handleMessage] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_471
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1408
    :cond_476
    const/16 v4, 0x10

    const-wide/16 v5, 0x1388

    invoke-virtual {p0, v4, v5, v6}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_28

    .line 1411
    :pswitch_47f
    iget-boolean v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v5, :cond_4a3

    const-string v5, "WimaxStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleMessage] EVENT_MOCALL_FAIL : 4G will disconnect. (currentState :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_4a3
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1413
    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->disconnect()Z

    goto/16 :goto_28

    .line 1166
    :pswitch_data_4ac
    .packed-switch 0x1
        :pswitch_29
        :pswitch_12e
        :pswitch_2bb
        :pswitch_d6
        :pswitch_28
        :pswitch_102
        :pswitch_109
        :pswitch_110
        :pswitch_338
        :pswitch_28
        :pswitch_3bd
        :pswitch_407
        :pswitch_414
        :pswitch_41c
        :pswitch_450
        :pswitch_47f
    .end packed-switch
.end method

.method public handleWimaxStateChanged(Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;)V
    .registers 14
    .parameter "newWimaxState"

    .prologue
    .line 755
    sget-object v7, Landroid/net/fourG/wimax/WimaxStateTracker$1;->$SwitchMap$android$net$fourG$wimax$WimaxState:[I

    iget-object v8, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->state:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v8}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_6de

    .line 1142
    :cond_d
    :goto_d
    return-void

    .line 757
    :pswitch_e
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 758
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_d

    .line 762
    :pswitch_19
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mIsTetheredmode:Z

    if-eqz v7, :cond_60

    .line 763
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    .line 767
    :goto_21
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 770
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 771
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 773
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v5

    .line 774
    .local v5, nMode:I
    const/4 v7, 0x4

    if-eq v5, v7, :cond_3c

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3c

    const/4 v7, 0x1

    if-ne v5, v7, :cond_40

    .line 775
    :cond_3c
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setBackhaulMode(Z)V

    .line 777
    :cond_40
    const/4 v7, 0x4

    if-eq v5, v7, :cond_46

    const/4 v7, 0x3

    if-ne v5, v7, :cond_65

    .line 778
    :cond_46
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    .line 782
    :goto_4a
    const/4 v7, 0x2

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 783
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 784
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 785
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 786
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 787
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    goto :goto_d

    .line 765
    .end local v5           #nMode:I
    :cond_60
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendModeChangeBroadcast(I)V

    goto :goto_21

    .line 780
    .restart local v5       #nMode:I
    :cond_65
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->setDMMode(Z)V

    goto :goto_4a

    .line 792
    .end local v5           #nMode:I
    :pswitch_6a
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 793
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-eq v7, v8, :cond_79

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v7, v8, :cond_9d

    .line 794
    :cond_79
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_97

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] modified nRetryFlag = 0, nScanAttempt = 0, bUserReq = true m_bSkipEntryDelayOnce = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_97
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 797
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 800
    :cond_9d
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    .line 802
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->getOdbConfigData()[I

    move-result-object v6

    .line 803
    .local v6, nOdbCfgData:[I
    if-eqz v6, :cond_b5

    .line 804
    const/4 v7, 0x1

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_RETRY_SECONDS:I

    .line 805
    const/4 v7, 0x2

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    .line 806
    const/4 v7, 0x5

    aget v7, v6, v7

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    .line 808
    :cond_b5
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->noteRunState()V

    .line 810
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v1

    .line 811
    .local v1, devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    .line 812
    .local v4, macAddress:Ljava/lang/String;
    const-string v7, "net.wimax.mac.address"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_e3

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "macAddress : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_e3
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->checkUseStaticIp()Z

    .line 819
    new-instance v2, Landroid/os/HandlerThread;

    const-string v7, "DHCP Handler Thread"

    invoke-direct {v2, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 820
    .local v2, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 821
    new-instance v7, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8, p0}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    .line 823
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    .line 824
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 836
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const-string v8, "WimaxStateTracker"

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;

    move-result-object v3

    .line 837
    .local v3, l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->acquire()V

    .line 838
    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;->release()V

    .line 840
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 841
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 843
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->SCANNING:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 844
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 846
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 848
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->SCANNING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 851
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bNoBackOff:Z

    if-nez v7, :cond_145

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v7

    if-nez v7, :cond_145

    .line 853
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan()Z

    goto/16 :goto_d

    .line 855
    :cond_145
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 856
    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 857
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_163

    .line 858
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_15f

    const-string v7, "WimaxStateTracker"

    const-string v8, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_15f
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 861
    :cond_163
    const/4 v7, 0x6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 866
    .end local v1           #devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    .end local v2           #dhcpThread:Landroid/os/HandlerThread;
    .end local v3           #l:Landroid/net/fourG/wimax/Wimax4GManager$MulticastLock;
    .end local v4           #macAddress:Ljava/lang/String;
    .end local v6           #nOdbCfgData:[I
    :pswitch_16b
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 867
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 868
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 870
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->SCANNING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 876
    :pswitch_186
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1a4

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleWimaxStateChanged : READY] WIMAX SCAN ATTEMPT TIMEOUT : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    :cond_1a4
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ne v7, v8, :cond_1bc

    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    if-eqz v7, :cond_1bc

    .line 878
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1b9

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] Reset m_bExitCriteria "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_1b9
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 882
    :cond_1bc
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->getWimaxMode()I

    move-result v5

    .line 883
    .restart local v5       #nMode:I
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_1f0

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] >>>> READY : WimaxMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " m_bSkipEntryDelayOnce = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " <<<<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_1f0
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v7, 0x1

    if-eq v5, v7, :cond_1ff

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1ff

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v7, 0x4

    if-ne v5, v7, :cond_297

    :cond_1ff
    const/4 v0, 0x1

    .line 885
    .local v0, bTethering:Z
    :goto_200
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_22a

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[READY] >>>> m_bExitCriteria ***********<<<<  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "[READY] >>>> m_bEntryDelaySet ***********<<<<  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_22a
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    if-eqz v7, :cond_29a

    if-nez v0, :cond_29a

    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    if-nez v7, :cond_29a

    .line 887
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_23f

    const-string v7, "WimaxStateTracker"

    const-string v8, "[RetryProcess] >>>> m_bExitCriteria <<<<"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :cond_23f
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_ENTRY_DELAY:I

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/net/fourG/wimax/WimaxNative;->VirtualIdleReq(IB)Z

    .line 889
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_25b

    .line 890
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_257

    const-string v7, "WimaxStateTracker"

    const-string v8, "[RetryProcess] removeMessage(EVENT_AFTER_VI_REQ_NEED_DELAY)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_257
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 893
    :cond_25b
    const/4 v7, 0x6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 895
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 896
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    .line 897
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_272

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] m_bExitCriteria ON."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_272
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 899
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 901
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 902
    sget-object v7, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Not_Met_Entry_Criteria:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 903
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 905
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 884
    .end local v0           #bTethering:Z
    :cond_297
    const/4 v0, 0x0

    goto/16 :goto_200

    .line 910
    .restart local v0       #bTethering:Z
    :cond_29a
    iget v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    iget v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->WIMAX_SCAN_ATTEMPT_TIMEOUT:I

    if-ne v7, v8, :cond_2ae

    .line 911
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_2ab

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] WIMAX SCAN ATTEMPT TIMEOUT"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2ab
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 915
    :cond_2ae
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 917
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->INACTIVE:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 920
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 921
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 923
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->checkUseStaticIp()Z

    .line 924
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 925
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 927
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v7, :cond_2e3

    .line 928
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_d

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 932
    :cond_2e3
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 934
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 937
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/net/fourG/wimax/Wimax4GManager;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_d

    .line 938
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_311

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleWimaxStateChanged : READY] connect() returns fail."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_311
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    .line 940
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetailOld:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 942
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 943
    sget-object v7, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 945
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 947
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 953
    .end local v0           #bTethering:Z
    .end local v5           #nMode:I
    :pswitch_336
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 955
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATING:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 961
    :pswitch_34b
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 964
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 965
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_37d

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessage : DhcpStart is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_37d
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 969
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_d

    .line 973
    :pswitch_392
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 974
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 975
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_3b6

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mHaveIpAddress :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    :cond_3b6
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3d9

    .line 978
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_3d3

    .line 979
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_3ce

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_3ce
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 982
    :cond_3d3
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 983
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->setPollTimer()V

    .line 986
    :cond_3d9
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v7, :cond_45f

    .line 987
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_401

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[handleMessageWimaxStateChanged] nRetryFlag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> 0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_401
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 989
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 990
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 991
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Idle:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_413

    .line 992
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 996
    :cond_413
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->COMPLETED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 998
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v8, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v8}, Landroid/net/fourG/wimax/Wimax4GManager;->getConnectedNSP()Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->set4GBaseStationInfo(Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;)V

    .line 999
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1000
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    .line 1019
    :goto_436
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    if-nez v7, :cond_d

    .line 1020
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_458

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[CONNECTED] m_bScreenOff :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_458
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bScreenOff:Z

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->SetScreenOff(Z)V

    goto/16 :goto_d

    .line 1002
    :cond_45f
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_46a

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged]  No IP Address -> setDetailedState.OBTAINING_IPADDR"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_46a
    sget-object v7, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1005
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1009
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->configureInterface()V

    .line 1012
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpStart:J

    .line 1013
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1014
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->ASSOCIATED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto :goto_436

    .line 1026
    :pswitch_493
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    goto/16 :goto_d

    .line 1029
    :pswitch_498
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->acquire_WakeLock()V

    .line 1031
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_4b3

    .line 1032
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_4ae

    const-string v7, "WimaxStateTracker"

    const-string v8, "[DISCONNECTED] removeMessage(EVENT_MOCALL_FAIL)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_4ae
    const/16 v7, 0x10

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1036
    :cond_4b3
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eqz v7, :cond_4e4

    .line 1037
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Abnormal_State:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_4e4

    .line 1038
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_4c8

    const-string v7, "WimaxStateTracker"

    const-string v8, "-------- Abnormal_State  ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    :cond_4c8
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4d9

    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    if-nez v7, :cond_573

    .line 1041
    :cond_4d9
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_4e4

    const-string v7, "WimaxStateTracker"

    const-string v8, "-------- discard Abnormal_State  ----------"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_4e4
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1062
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetLinkStatusInfo()V

    .line 1064
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1065
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_5ad

    .line 1066
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_502

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] ^^^ DetailedState.DISCONNECTED ^^^"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_502
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->updateWimaxNotiMsg()V

    .line 1070
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->DISCONNECTED:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    .line 1078
    :goto_515
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    if-eqz v7, :cond_5ce

    .line 1079
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_524

    const-string v7, "WimaxStateTracker"

    const-string v8, "USER Disconnect!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_524
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v7

    if-eqz v7, :cond_53d

    .line 1081
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_537

    const-string v7, "WimaxStateTracker"

    const-string v8, "setWimaxStatus(NET_4G_STATE_DISABLING)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_537
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->setWimax4GState(I)V

    .line 1084
    :cond_53d
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1085
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1087
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1089
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v7

    if-nez v7, :cond_557

    .line 1090
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_557

    const-string v7, "WimaxStateTracker"

    const-string v8, "Failed to stop Wimax."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    :cond_557
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v7

    if-nez v7, :cond_5ca

    .line 1094
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_569

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] Failed to unload Wimax driver."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_569
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v7}, Landroid/net/fourG/wimax/Wimax4GManager;->release_sWakeLock()V

    .line 1099
    :goto_56e
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bUserDisconnect:Z

    goto/16 :goto_d

    .line 1044
    :cond_573
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mModemReset:Z

    .line 1045
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1046
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nRetryFlag:I

    .line 1047
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nScanAttempt:I

    .line 1048
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 1049
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const-string v8, "00:00:00:00:00:00"

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1050
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1051
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/16 v8, -0x270f

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1052
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1053
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1054
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1055
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    goto/16 :goto_d

    .line 1072
    :cond_5ad
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5b8

    const-string v7, "WimaxStateTracker"

    const-string v8, "[handleMessageWimaxStateChanged] ^^^ DetailedState.FAILED ^^^"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_5b8
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    sget-object v8, Landroid/net/fourG/net4GSupplicantState;->INVALID:Landroid/net/fourG/net4GSupplicantState;

    invoke-virtual {v7, v8}, Landroid/net/fourG/wimax/Wimax4GInfo;->setSupplicantState(Landroid/net/fourG/net4GSupplicantState;)V

    goto/16 :goto_515

    .line 1097
    :cond_5ca
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStopped()V

    goto :goto_56e

    .line 1101
    :cond_5ce
    iget-object v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateOld:Landroid/net/fourG/wimax/WimaxState;

    sget-object v8, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v7, v8, :cond_61f

    .line 1103
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5f2

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " connection fail :: newWimaxState.info ********  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_5f2
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_5fd

    const-string v7, "WimaxStateTracker"

    const-string v8, " !!!!!!!!!!!!!!!!!!!!!!!!!WimaxState.DISCONNECTED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :cond_5fd
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bEntryDelaySet:Z

    if-nez v7, :cond_60f

    .line 1107
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_60c

    const-string v7, "WimaxStateTracker"

    const-string v8, " m_bEntryDelaySet!!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_60c
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bExitCriteria:Z

    .line 1111
    :cond_60f
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_61a

    const-string v7, "WimaxStateTracker"

    const-string v8, "Fail for Connect command !!!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_61a
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1114
    :cond_61f
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_Sync:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_62b

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Timeout_NE:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_64e

    .line 1116
    :cond_62b
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_649

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection Time out !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_649
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1118
    :cond_64e
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_PHY:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_65a

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->Syncup_MAC:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_67d

    .line 1120
    :cond_65a
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_678

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sync Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_678
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1122
    :cond_67d
    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_Device:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-eq v7, v8, :cond_689

    iget-object v7, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    sget-object v8, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->EAP_authentication_User:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    if-ne v7, v8, :cond_6ac

    .line 1124
    :cond_689
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_6a7

    const-string v7, "WimaxStateTracker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Auth Fail !!!!!!!!!!!!!!!!!!!!!!!!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;->info:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_6a7
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->RetryProcess()V

    goto/16 :goto_d

    .line 1127
    :cond_6ac
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_6b7

    const-string v7, "WimaxStateTracker"

    const-string v8, "Virtual IDLE!!!!!!!!!!!!!! "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    :cond_6b7
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_6cf

    .line 1129
    iget-boolean v7, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v7, :cond_6ca

    const-string v7, "WimaxStateTracker"

    const-string v8, "[DISCONNECTED] removeMessage(EVENT_VI_REQ)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_6ca
    const/16 v7, 0x8

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 1132
    :cond_6cf
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_d

    .line 1133
    const/4 v7, 0x6

    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v7, v8, v9}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_d

    .line 755
    :pswitch_data_6de
    .packed-switch 0x1
        :pswitch_392
        :pswitch_498
        :pswitch_e
        :pswitch_19
        :pswitch_6a
        :pswitch_16b
        :pswitch_186
        :pswitch_336
        :pswitch_34b
        :pswitch_493
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .registers 2

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->UNKNOWN:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_13

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v3

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->INITIALIZING:Landroid/net/fourG/wimax/WimaxState;

    if-ne v3, v4, :cond_1d

    :cond_13
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    if-nez v3, :cond_1d

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDriverStopped()Z

    move-result v3

    if-nez v3, :cond_a5

    :cond_1d
    move v0, v2

    .line 579
    .local v0, bRet:Z
    :goto_1e
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_3e

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTeardownRequested() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isTeardownRequested()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_3e
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_5e

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDriverStopped "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDriverStopped()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_5e
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_87

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(isTeardownRequested() || !isDriverStopped()  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isTeardownRequested()Z

    move-result v5

    if-nez v5, :cond_7b

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isDriverStopped()Z

    move-result v5

    if-nez v5, :cond_7c

    :cond_7b
    move v1, v2

    :cond_7c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_87
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_a3

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailable() !!!!!!!!!!!!!!!!!!!!!!!! return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a3
    .catchall {:try_start_3 .. :try_end_a3} :catchall_a8

    .line 583
    :cond_a3
    monitor-exit p0

    return v0

    .end local v0           #bRet:Z
    :cond_a5
    move v0, v1

    .line 575
    goto/16 :goto_1e

    :catchall_a8
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isBootCompleted(Z)V
    .registers 2
    .parameter "bCompleted"

    .prologue
    .line 2047
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    .line 2048
    return-void
.end method

.method public isConnectionCompleted()Z
    .registers 3

    .prologue
    .line 607
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_b

    const-string v0, "WimaxStateTracker"

    const-string v1, "isConnectionCompleted() !!!!!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_b
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public isDefaultRouteSet()Z
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .registers 2

    .prologue
    .line 435
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method notifyAuthFail(ILjava/lang/String;)V
    .registers 6
    .parameter "nErrorCode"
    .parameter "strError"

    .prologue
    .line 640
    const/16 v1, 0xb

    new-instance v2, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;

    invoke-direct {v2, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxAuthFail;-><init>(ILjava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 642
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 643
    return-void
.end method

.method notifyDriverStarted()V
    .registers 4

    .prologue
    .line 661
    const/16 v0, 0x9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 662
    return-void
.end method

.method public notifyDriverStopped()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 649
    const/4 v0, 0x4

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    .line 652
    const/16 v0, 0x9

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 653
    return-void
.end method

.method public notifyIpRenew()V
    .registers 3

    .prologue
    .line 631
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mUseStaticIp:Z

    if-nez v0, :cond_1a

    .line 632
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v0

    sget-object v1, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v0, v1, :cond_1a

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 634
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    .line 637
    :cond_1a
    return-void
.end method

.method public notifyLinkWeakInformation()V
    .registers 2

    .prologue
    .line 673
    const/16 v0, 0xe

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 674
    return-void
.end method

.method public notifyMoCallInformation()V
    .registers 2

    .prologue
    .line 677
    const/16 v0, 0xf

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 678
    return-void
.end method

.method public notifyOMADMResponse(Ljava/nio/ByteBuffer;II)V
    .registers 5
    .parameter "bDataArray"
    .parameter "nDataLen"
    .parameter "odbMngState"

    .prologue
    .line 665
    const/16 v0, 0xc

    invoke-static {p0, v0, p2, p3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 666
    return-void
.end method

.method public notifyRadioInfoResponse()V
    .registers 2

    .prologue
    .line 669
    const/16 v0, 0xd

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 670
    return-void
.end method

.method public notifyStateChange(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V
    .registers 6
    .parameter "newWimaxState"
    .parameter "newInfo"

    .prologue
    .line 625
    const/4 v1, 0x1

    new-instance v2, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;

    invoke-direct {v2, p1, p2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateChangeResult;-><init>(Landroid/net/fourG/wimax/WimaxState;Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 627
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 628
    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 463
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 464
    return-void
.end method

.method public reconnect()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2054
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_22

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reconnect] isWifiConnected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_22
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2056
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_33

    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] isAvailable false ignore reconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    move v0, v1

    .line 2105
    :cond_34
    :goto_34
    return v0

    .line 2059
    :cond_35
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_76

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reconnect] mTornDownByConnMgr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  getCurrentWimaxState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getCurrentWimaxState()Landroid/net/fourG/wimax/WimaxState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getWimaxStatus()  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v4}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2061
    :cond_76
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2062
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2063
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_89

    const-string v2, "WimaxStateTracker"

    const-string v3, "mTeardownRequested.set(false)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    :cond_89
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getPersistedWimaxEnabled()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 2066
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_9c

    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] This is NOT by User request.... reject..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    move v0, v1

    .line 2067
    goto :goto_34

    .line 2069
    :cond_9e
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_isBootCompleted:Z

    if-nez v2, :cond_af

    .line 2070
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_ad

    const-string v2, "WimaxStateTracker"

    const-string v3, "[reconnect] m_isBootCompleted is false "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    move v0, v1

    .line 2071
    goto :goto_34

    .line 2087
    :cond_af
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    if-eq v2, v0, :cond_d1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    if-eqz v2, :cond_d1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e2

    .line 2090
    :cond_d1
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v0}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v0

    .line 2091
    .local v0, bRet:Z
    if-eqz v0, :cond_34

    .line 2092
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2093
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    goto/16 :goto_34

    .line 2099
    .end local v0           #bRet:Z
    :cond_e2
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_100

    const-string v2, "WimaxStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[reconnect] mWimaxState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    :cond_100
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v3, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-ne v2, v3, :cond_110

    .line 2101
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2102
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->startScan(Z)Z

    goto/16 :goto_34

    :cond_110
    move v0, v1

    .line 2105
    goto/16 :goto_34
.end method

.method public releaseWakeLock()V
    .registers 2

    .prologue
    .line 709
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    .line 710
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 712
    :cond_9
    return-void
.end method

.method public requestConnectionInfo()Landroid/net/fourG/wimax/Wimax4GInfo;
    .registers 5

    .prologue
    .line 1669
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-direct {p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->requestPolledInfo(Landroid/net/fourG/wimax/Wimax4GInfo;)V

    .line 1670
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v1

    .line 1672
    .local v1, dhcp:Landroid/net/DhcpInfo;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iget-object v3, v3, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1673
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getDeviceInformation()Landroid/net/fourG/wimax/Wimax4GDeviceInfo;

    move-result-object v0

    .line 1674
    .local v0, devInfo:Landroid/net/fourG/wimax/Wimax4GDeviceInfo;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/Wimax4GDeviceInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/Wimax4GInfo;->setMacAddress(Ljava/lang/String;)V

    .line 1675
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    return-object v2
.end method

.method public resetInterface()V
    .registers 8

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 1599
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 1600
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    .line 1601
    iput-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    .line 1602
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v2, v4}, Landroid/net/fourG/wimax/Wimax4GInfo;->setIpAddress(I)V

    .line 1608
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpRenewIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1614
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    if-eqz v2, :cond_3a

    .line 1615
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->setCancelCallback(Z)V

    .line 1616
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1617
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v5}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1619
    :cond_2d
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v6}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1620
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpTarget:Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;

    invoke-virtual {v2, v6}, Landroid/net/fourG/wimax/WimaxStateTracker$DhcpHandler;->removeMessages(I)V

    .line 1623
    :cond_3a
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 1624
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_4d

    const-string v2, "WimaxStateTracker"

    const-string v3, "[resetInterface] Could not stop DHCP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    :cond_4d
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 1636
    const-string v0, "0.0.0.0"

    .line 1637
    .local v0, EMPTY_IP:Ljava/lang/String;
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 1640
    .local v1, EMPTY_ROUTE:Landroid/net/RouteInfo;
    new-instance v2, Landroid/net/DhcpInfoInternal;

    invoke-direct {v2}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    .line 1641
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    .line 1642
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v1}, Landroid/net/DhcpInfoInternal;->addRoute(Landroid/net/RouteInfo;)V

    .line 1643
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iput v4, v2, Landroid/net/DhcpInfoInternal;->prefixLength:I

    .line 1644
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->dns1:Ljava/lang/String;

    .line 1645
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->dns2:Ljava/lang/String;

    .line 1646
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    const-string v3, "0.0.0.0"

    iput-object v3, v2, Landroid/net/DhcpInfoInternal;->serverAddress:Ljava/lang/String;

    .line 1647
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    iput v4, v2, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    .line 1649
    return-void
.end method

.method public resetLinkStatusInfo()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1579
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const-string v1, "00:00:00:00:00:00"

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setBSID(Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setFREQ(I)V

    .line 1581
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    const/16 v1, -0x270f

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GInfo;->setRssi(I)V

    .line 1582
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setCinr(I)V

    .line 1583
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v0, v2}, Landroid/net/fourG/wimax/Wimax4GInfo;->setTxPower(I)V

    .line 1584
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->nOldSignalLevel:I

    .line 1585
    sget-object v0, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    .line 1586
    sget-object v0, Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;->De_registration:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxStateDetail:Landroid/net/fourG/wimax/DeviceStatusInfo$ConnectionProgressInfo;

    .line 1587
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendWimaxStateChangeBroadcast()V

    .line 1588
    return-void
.end method

.method public resetOldState()V
    .registers 2

    .prologue
    .line 1591
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxMonitor;->resetOldState()V

    .line 1592
    return-void
.end method

.method public declared-synchronized restart()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 2146
    monitor-enter p0

    :try_start_2
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 2147
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_15

    .line 2152
    :cond_a
    :goto_a
    monitor-exit p0

    return v2

    .line 2149
    :cond_c
    :try_start_c
    iget v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    .line 2150
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    .line 2146
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method sendMruListBroadcast(I)V
    .registers 4
    .parameter "nlistSize"

    .prologue
    .line 1928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1929
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1930
    const-string v1, "MruList"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1932
    return-void
.end method

.method sendMruUpdateBroadcast(II)V
    .registers 5
    .parameter "subType"
    .parameter "ErrorValue"

    .prologue
    .line 1935
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1936
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1937
    const-string v1, "subType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1938
    const-string v1, "ErrorValue"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1939
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1940
    return-void
.end method

.method sendWimaxBSListBroadcast(Ljava/util/List;)V
    .registers 4
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
    .line 1976
    .local p1, nlist:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.SCAN_RESULTS_AVAILABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1977
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bs_scan_result"

    check-cast p1, Landroid/os/Parcelable;

    .end local p1           #nlist:Ljava/util/List;,"Ljava/util/List<Landroid/net/fourG/wimax/Wimax4GBaseStationInfo;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1978
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1979
    return-void
.end method

.method sendWimaxRadioInfoResponseBroadcast()V
    .registers 5

    .prologue
    .line 1943
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/Wimax4GManager;->getRadioInfoTemperature()Landroid/net/fourG/net4GManager$RadioInfoTemperature;

    move-result-object v1

    check-cast v1, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;

    .line 1945
    .local v1, radioInfoObj:Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;
    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager$WimaxRadioInfoTemperature;->getCurrent()I

    move-result v2

    iput v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    .line 1946
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wimax.WIMAX_RESPONSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "WimaxRadioInfo"

    iget v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxTemperature:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1948
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1949
    return-void
.end method

.method public sendWorkModeBroadCast(I)V
    .registers 4
    .parameter "workMode"

    .prologue
    .line 1952
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wimax.WIMAX_WORK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1953
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "WimaxWorkMode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1954
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1955
    return-void
.end method

.method public setDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 449
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_1c

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataEnabled: IGNORING enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1c
    return-void
.end method

.method public setDependencyMet(Z)V
    .registers 2
    .parameter "met"

    .prologue
    .line 2604
    return-void
.end method

.method public setEnableLog(Z)V
    .registers 4
    .parameter "blog"

    .prologue
    .line 2186
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    .line 2187
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-static {v0}, Landroid/net/fourG/wimax/WimaxNative;->setEnableLog(Z)V

    .line 2188
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/WimaxMonitor;->setEnableLog(Z)V

    .line 2189
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    if-nez v0, :cond_18

    .line 2190
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 2192
    :cond_18
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    invoke-virtual {v0, v1}, Landroid/net/fourG/wimax/Wimax4GManager;->enableLog(Z)V

    .line 2193
    return-void
.end method

.method public setHaveLinkInfo(Z)V
    .registers 2
    .parameter "mHaveLinkInfo"

    .prologue
    .line 2557
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isHaveLinkInfo:Z

    .line 2558
    return-void
.end method

.method public setIdleState(Z)V
    .registers 2
    .parameter "mIdleState"

    .prologue
    .line 2561
    iput-boolean p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->isIdleState:Z

    .line 2562
    return-void
.end method

.method public setNotificationVisible(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "context"
    .parameter "iconID"
    .parameter "bodyMessage"
    .parameter "tickerMessage"

    .prologue
    .line 389
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_20

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() within setNotificationVisible :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_20
    invoke-direct {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->getValue()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 391
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->icon:I

    .line 393
    if-eqz p4, :cond_30

    .line 394
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    iput-object p4, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 396
    :cond_30
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxSettingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 397
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 399
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxNotifyManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 401
    :cond_44
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 345
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setPolicyDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_22
    return-void
.end method

.method public setRadio(Z)Z
    .registers 6
    .parameter "turnOn"

    .prologue
    .line 2156
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 2157
    .local v0, nWimaxStatus:I
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_22

    const-string v1, "WimaxStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setRadio]  nWimaxStatus ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_22
    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2a

    .line 2160
    :cond_28
    const/4 v1, 0x0

    .line 2162
    :goto_29
    return v1

    :cond_2a
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v1, p1}, Landroid/net/fourG/wimax/Wimax4GManager;->set4GEnabled(Z)Z

    move-result v1

    goto :goto_29
.end method

.method public setReleaseWakeLockCallback(Ljava/lang/Runnable;)V
    .registers 2
    .parameter "callback"

    .prologue
    .line 733
    iput-object p1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mReleaseWakeLockCallback:Ljava/lang/Runnable;

    .line 734
    return-void
.end method

.method public setTeardownRequested(Z)V
    .registers 4
    .parameter "isRequested"

    .prologue
    .line 430
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 431
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_10

    const-string v0, "WimaxStateTracker"

    const-string v1, "mTeardownRequested.set(isRequested)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_10
    return-void
.end method

.method public setUSBTo(Z)V
    .registers 9
    .parameter "enable"

    .prologue
    .line 1983
    if-eqz p1, :cond_32

    .line 1984
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->WiMAX:[B

    .line 1987
    .local v0, data:[B
    :goto_4
    iget-boolean v4, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v4, :cond_20

    const-string v4, "WimaxStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUSBTo  enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    :cond_20
    const/4 v2, 0x0

    .line 1991
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_21
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/sec/switch/usb_sel"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_41
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_35

    .line 1992
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_28
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_4c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4f

    .line 1996
    if-eqz v3, :cond_30

    .line 1997
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4a

    :cond_30
    :goto_30
    move-object v2, v3

    .line 2000
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :cond_31
    :goto_31
    return-void

    .line 1986
    .end local v0           #data:[B
    .end local v2           #out:Ljava/io/FileOutputStream;
    :cond_32
    sget-object v0, Landroid/net/fourG/wimax/WimaxStateTracker;->PDA:[B

    .restart local v0       #data:[B
    goto :goto_4

    .line 1993
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_35
    move-exception v1

    .line 1994
    .local v1, e:Ljava/io/IOException;
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_41

    .line 1996
    if-eqz v2, :cond_31

    .line 1997
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_31

    :catch_3f
    move-exception v4

    goto :goto_31

    .line 1996
    .end local v1           #e:Ljava/io/IOException;
    :catchall_41
    move-exception v4

    :goto_42
    if-eqz v2, :cond_47

    .line 1997
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    .line 1996
    :cond_47
    :goto_47
    throw v4

    .line 1997
    :catch_48
    move-exception v5

    goto :goto_47

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4a
    move-exception v4

    goto :goto_30

    .line 1996
    :catchall_4c
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_42

    .line 1993
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_4f
    move-exception v1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_36
.end method

.method public setUsbUnPlugged()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 737
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_d

    const-string v1, "WimaxStateTracker"

    const-string v2, "setUsbUnPlugged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_d
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->setDeviceStateToVirtualIdle()V

    .line 740
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 741
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 744
    const-string v1, "4g_state"

    sget-object v2, Landroid/net/fourG/wimax/WimaxState;->DISCONNECTED:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v2}, Landroid/net/fourG/wimax/WimaxState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 745
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 747
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 748
    iget-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v1, :cond_3d

    const-string v1, "WimaxStateTracker"

    const-string v2, "[setUsbUnPlugged] removeMessage(EVENT_VI_REQ)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_3d
    invoke-virtual {p0, v3}, Landroid/net/fourG/wimax/WimaxStateTracker;->removeMessages(I)V

    .line 751
    :cond_40
    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v3, v1, v2}, Landroid/net/fourG/wimax/WimaxStateTracker;->sendEmptyMessageDelayed(IJ)Z

    .line 752
    return-void
.end method

.method public setUserDataEnable(Z)V
    .registers 5
    .parameter "enabled"

    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v0, :cond_22

    const-string v0, "WimaxStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring setUserDataEnable("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_22
    return-void
.end method

.method public setWakeLock(Landroid/os/PowerManager$WakeLock;)V
    .registers 2
    .parameter "wl"

    .prologue
    .line 715
    sput-object p1, Landroid/net/fourG/wimax/WimaxStateTracker;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 716
    return-void
.end method

.method public startEventLoop()V
    .registers 2

    .prologue
    .line 561
    iget-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxMonitor:Landroid/net/fourG/wimax/WimaxMonitor;

    invoke-virtual {v0}, Landroid/net/fourG/wimax/WimaxMonitor;->startMonitoring()V

    .line 562
    return-void
.end method

.method public startMonitoring()V
    .registers 2

    .prologue
    .line 540
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 541
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .parameter "context"
    .parameter "target"

    .prologue
    .line 548
    iput-object p2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mCsHandler:Landroid/os/Handler;

    .line 550
    invoke-static {}, Landroid/net/fourG/wimax/Wimax4GManager;->getInstance()Landroid/net/fourG/wimax/Wimax4GManager;

    move-result-object v2

    iput-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    .line 552
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 553
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.fourG.wimax.NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    new-instance v1, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;-><init>(Landroid/net/fourG/wimax/WimaxStateTracker;Landroid/net/fourG/wimax/WimaxStateTracker$1;)V

    .line 557
    .local v1, mWimaxStateReceiver:Landroid/net/fourG/wimax/WimaxStateTracker$WimaxStateReceiver;
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    return-void
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2172
    const/4 v0, -0x1

    return v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .registers 5
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 2182
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2006
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->isTeardownRequested()Z

    move-result v3

    if-nez v3, :cond_e9

    .line 2008
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_31

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[teardown] state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") DisconnectWimax"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2011
    :cond_31
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->resetInterface()V

    .line 2012
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTED:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_46

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->CONNECTING:Landroid/net/fourG/wimax/WimaxState;

    if-eq v3, v4, :cond_46

    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    sget-object v4, Landroid/net/fourG/wimax/WimaxState;->OBTAINING_IPADDR:Landroid/net/fourG/wimax/WimaxState;

    if-ne v3, v4, :cond_7b

    .line 2014
    :cond_46
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_6a

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[teardown] state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") DisconnectWimax"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    :cond_6a
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->disconnectAndStop()Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 2016
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2017
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2018
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    .line 2043
    :cond_7a
    :goto_7a
    return v1

    .line 2022
    :cond_7b
    iget-object v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWM:Landroid/net/fourG/wimax/Wimax4GManager;

    invoke-virtual {v3}, Landroid/net/fourG/wimax/Wimax4GManager;->get4GState()I

    move-result v0

    .line 2023
    .local v0, wimaxStatus:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_87

    const/4 v3, 0x2

    if-ne v0, v3, :cond_dd

    .line 2025
    :cond_87
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bPoweroff:Z

    .line 2026
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_ad

    const-string v3, "WimaxStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[teardown] state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimaxState:Landroid/net/fourG/wimax/WimaxState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") stopWimax"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_ad
    invoke-static {}, Landroid/net/fourG/wimax/WimaxNative;->stopWimax()Z

    move-result v3

    if-nez v3, :cond_be

    .line 2028
    iget-boolean v3, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v3, :cond_be

    const-string v3, "WimaxStateTracker"

    const-string v4, "[teardown] fail to stop wimax.."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_be
    invoke-static {v2}, Landroid/net/fourG/wimax/WimaxNative;->loadDriver(B)Z

    move-result v2

    if-eqz v2, :cond_d2

    .line 2031
    invoke-direct {p0, v1}, Landroid/net/fourG/wimax/WimaxStateTracker;->setTornDownByConnMgr(Z)V

    .line 2032
    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2033
    invoke-virtual {p0}, Landroid/net/fourG/wimax/WimaxStateTracker;->notifyDriverStopped()V

    .line 2034
    iput-boolean v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bSkipEntryDelayOnce:Z

    goto :goto_7a

    .line 2037
    :cond_d2
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_dd

    const-string v2, "WimaxStateTracker"

    const-string v3, "[teardown] fail to turn wimax off"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    :cond_dd
    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->m_bLog:Z

    if-eqz v2, :cond_7a

    const-string v2, "WimaxStateTracker"

    const-string v3, "[teardown] already turned off"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .end local v0           #wimaxStatus:I
    :cond_e9
    move v1, v2

    .line 2043
    goto :goto_7a
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2197
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2198
    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2199
    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2200
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_70

    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_70

    .line 2201
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2205
    :goto_2c
    sget-object v1, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mWimax4GInfo:Landroid/net/fourG/wimax/Wimax4GInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2206
    iget-object v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mDhcpInfoInt:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/fourG/wimax/WimaxStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2207
    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 2210
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2203
    :cond_70
    iget v1, p0, Landroid/net/fourG/wimax/WimaxStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2c
.end method
