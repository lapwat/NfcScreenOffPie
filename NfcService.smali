.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$WatchDogThread;,
        Lcom/android/nfc/NfcService$NfcDtaService;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$ReaderModeParams;
    }
.end annotation


# static fields
.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z = false

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field static final INVALID_NATIVE_HANDLE:I = -0x1

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MSG_APPLY_SCREEN_STATE:I = 0x10

.field static final MSG_COMMIT_ROUTING:I = 0x7

.field static final MSG_DEREGISTER_T3T_IDENTIFIER:I = 0xd

.field static final MSG_INVOKE_BEAM:I = 0x8

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x1

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x2

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0x4

.field static final MSG_MOCK_NDEF:I = 0x3

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_REGISTER_T3T_IDENTIFIER:I = 0xc

.field static final MSG_RESUME_POLLING:I = 0xb

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x9

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0xa

.field static final MSG_ROUTE_AID:I = 0x5

.field static final MSG_TAG_DEBOUNCE:I = 0xe

.field static final MSG_TRANSACTION_EVENT:I = 0x11

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final MSG_UPDATE_STATS:I = 0xf

.field public static final NCI_VERSION_1_0:I = 0x10

.field public static final NCI_VERSION_2_0:I = 0x20

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field static final NFC_ON_DEFAULT:Z = true

.field static final NFC_POLLING_MODE:I = 0x1

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_KOVIO:I = 0x20

.field static final NFC_POLL_V:I = 0x8

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final STATS_UPDATE_INTERVAL_MS:J = 0xdbba00L

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_ENABLE:I = 0x1

.field static final TRON_NFC_CE:Ljava/lang/String; = "nfc_ce"

.field static final TRON_NFC_P2P:Ljava/lang/String; = "nfc_p2p"

.field static final TRON_NFC_TAG:Ljava/lang/String; = "nfc_tag"

.field private static nci_version:I

.field public static sIsDtaMode:Z

.field public static sIsShortRecordLayout:Z

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field mDebounceTagDebounceMs:I

.field mDebounceTagNativeHandle:I

.field mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

.field mDebounceTagUid:[B

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field mEndSound:I

.field mErrorSound:I

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field mInProvisionMode:Z

.field mIsDebugBuild:Z

.field mIsHceCapable:Z

.field mIsHceFCapable:Z

.field mIsLiveCaseEnabled:Z

.field mIsNdefPushEnabled:Z

.field mIsVrModeEnabled:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field mLastReadNdefMessage:Landroid/nfc/NdefMessage;

.field mLiveCaseTechnology:I

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field mNfcDtaService:Lcom/android/nfc/NfcService$NfcDtaService;

.field mNfcEventInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSEService:Landroid/se/omapi/ISecureElementService;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVibrationEffect:Landroid/os/VibrationEffect;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

.field private vrManager:Landroid/service/vr/IVrManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsShortRecordLayout:Z

    .line 211
    const/16 v1, 0x10

    sput v1, Lcom/android/nfc/NfcService;->nci_version:I

    .line 287
    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 11

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 228
    nop

    .line 229
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 2471
    new-instance v1, Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 2495
    new-instance v1, Lcom/android/nfc/NfcService$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2553
    new-instance v1, Lcom/android/nfc/NfcService$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 2571
    new-instance v1, Lcom/android/nfc/NfcService$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 2583
    new-instance v1, Lcom/android/nfc/NfcService$4;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 378
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    .line 379
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 381
    new-instance p1, Lcom/android/nfc/NfcService$TagService;

    invoke-direct {p1, p0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object p1, p0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 382
    new-instance p1, Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-direct {p1, p0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object p1, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 383
    const-string p1, "NfcService"

    const-string v1, "Starting NFC service"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 387
    new-instance v1, Lcom/android/nfc/ScreenStateHelper;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 388
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 389
    new-instance v1, Lcom/android/nfc/dhimpl/NativeNfcManager;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 391
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 393
    new-instance v1, Lcom/android/nfc/handover/HandoverDataParser;

    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverDataParser;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 394
    nop

    .line 396
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    goto :goto_0

    .line 398
    :catch_0
    move-exception v2

    move v2, v1

    .line 402
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    goto :goto_1

    .line 403
    :catch_1
    move-exception v3

    .line 404
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    .line 407
    :goto_1
    iput v1, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    .line 410
    const/4 v3, 0x1

    :try_start_2
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 411
    move v5, v1

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_4

    .line 412
    aget-object v6, v4, v5

    const-string v7, "TypeA"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 413
    iget v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/2addr v6, v3

    iput v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    goto :goto_3

    .line 414
    :cond_0
    aget-object v6, v4, v5

    const-string v7, "TypeB"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 415
    iget v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    goto :goto_3

    .line 416
    :cond_1
    aget-object v6, v4, v5

    const-string v7, "TypeF"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 417
    iget v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    goto :goto_3

    .line 418
    :cond_2
    aget-object v6, v4, v5

    const-string v7, "TypeV"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 419
    iget v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 411
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 424
    :cond_4
    goto :goto_4

    .line 422
    :catch_2
    move-exception v4

    .line 423
    iput v1, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    .line 426
    :goto_4
    if-eqz v2, :cond_6

    .line 427
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "device_provisioned"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto :goto_6

    .line 430
    :cond_6
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 433
    :goto_6
    new-instance v2, Lcom/android/nfc/NfcDispatcher;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-boolean v6, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    iget-boolean v7, p0, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;ZZ)V

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 435
    new-instance v2, Lcom/android/nfc/P2pLinkManager;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    iget-object v6, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 436
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v6

    iget-object v7, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 438
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "NfcServicePrefs"

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 439
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 441
    iput v3, p0, Lcom/android/nfc/NfcService;->mState:I

    .line 442
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "ndef_push_on"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 443
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/nfc/NfcService;->mUserId:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v4}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 445
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "userdebug"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move v2, v1

    goto :goto_8

    :cond_8
    :goto_7
    move v2, v3

    :goto_8
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 447
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 449
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "NfcService:mRoutingWakeLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 452
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 453
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 454
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    .line 455
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    .line 457
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 459
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 460
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 461
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 463
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 466
    new-instance v7, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFFA"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 467
    const-string v0, "android.intent.action.SCREEN_ONA"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v0, "android.intent.action.USER_PRESENTA"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 469
    const-string v0, "android.intent.action.USER_SWITCHEDA"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 472
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 473
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 477
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 478
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 479
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 483
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 484
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->updatePackageCache()V

    .line 488
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 489
    nop

    .line 490
    const-string v2, "android.hardware.nfc.hce"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "android.hardware.nfc.hcef"

    if-nez v2, :cond_a

    .line 491
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_9

    :cond_9
    move v2, v1

    goto :goto_a

    :cond_a
    :goto_9
    move v2, v3

    :goto_a
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 492
    nop

    .line 493
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    .line 494
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_b

    .line 495
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 497
    :cond_b
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 500
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    const-string v2, "nfc"

    invoke-static {v2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 502
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v3, [Ljava/lang/Integer;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 504
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0xf

    const-wide/32 v2, 0xdbba00

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 506
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_c

    .line 510
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 511
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 514
    goto :goto_b

    .line 512
    :catch_3
    move-exception v0

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register VR mode state listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_c
    :goto_b
    const-string p1, "secure_element"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 518
    return-void
.end method

.method private StopPresenceChecking()V
    .locals 5

    .line 1800
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1801
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1802
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_0

    .line 1803
    check-cast v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1804
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->stopPresenceChecking()V

    .line 1801
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1807
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/nfc/NfcService;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/nfc/NfcService;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/nfc/NfcService;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->StopPresenceChecking()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/nfc/NfcService;)Z
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isSEServiceAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mVibrationEffect:Landroid/os/VibrationEffect;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object p0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 110
    sget v0, Lcom/android/nfc/NfcService;->nci_version:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    .line 110
    sput p0, Lcom/android/nfc/NfcService;->nci_version:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object p0
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 6

    .line 1742
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v0

    .line 1744
    const/4 v1, -0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-lt p1, v2, :cond_6

    .line 1746
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz p1, :cond_5

    .line 1747
    nop

    .line 1748
    iget p1, p1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr p1, v5

    if-eqz p1, :cond_0

    .line 1749
    move v3, v5

    .line 1750
    :cond_0
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget p1, p1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    .line 1751
    or-int/lit8 v3, v3, 0x2

    .line 1752
    :cond_1
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget p1, p1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr p1, v4

    if-eqz p1, :cond_2

    .line 1753
    or-int/lit8 v3, v3, 0x4

    .line 1754
    :cond_2
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget p1, p1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_3

    .line 1755
    or-int/lit8 v3, v3, 0x8

    .line 1756
    :cond_3
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget p1, p1, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_4

    .line 1757
    or-int/lit8 v3, v3, 0x20

    .line 1759
    :cond_4
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1760
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1761
    goto :goto_1

    .line 1762
    :cond_5
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1763
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_1

    .line 1765
    :cond_6
    if-ne p1, v4, :cond_7

    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_7

    .line 1766
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1768
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto :goto_1

    .line 1769
    :cond_7
    if-ne p1, v4, :cond_b

    iget-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 1770
    invoke-virtual {p1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1771
    :cond_8
    nop

    .line 1773
    iget-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsLiveCaseEnabled:Z

    if-eqz p1, :cond_9

    .line 1774
    iget p1, p0, Lcom/android/nfc/NfcService;->mLiveCaseTechnology:I

    or-int/2addr p1, v3

    goto :goto_0

    .line 1773
    :cond_9
    move p1, v3

    .line 1775
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1776
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v1}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v1

    or-int/2addr p1, v1

    .line 1777
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1778
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1779
    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1782
    :cond_b
    :goto_1
    iget-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt p1, v4, :cond_c

    iget-object p1, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez p1, :cond_c

    .line 1784
    invoke-virtual {v0, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 1787
    :cond_c
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .locals 1

    .line 296
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 1924
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1925
    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1926
    invoke-static {p2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1927
    invoke-static {p3}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1928
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    new-array p1, p1, [B

    .line 1929
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1930
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1932
    return-object p1
.end method

.method static hexStringToBytes(Ljava/lang/String;)[B
    .locals 7

    .line 1678
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1679
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1680
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 1681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1682
    add-int/lit8 v0, v0, 0x1

    .line 1684
    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 1685
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1686
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 1687
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 1685
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 1689
    :cond_2
    return-object v1

    .line 1678
    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSEServiceAvailable()Z
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-nez v0, :cond_0

    .line 522
    const-string v0, "secure_element"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/se/omapi/ISecureElementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/se/omapi/ISecureElementService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSEService:Landroid/se/omapi/ISecureElementService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTagPresent()Z
    .locals 3

    .line 1791
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1792
    instance-of v2, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_0

    .line 1793
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v0

    return v0

    .line 1795
    :cond_0
    goto :goto_0

    .line 1796
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 1

    .line 2596
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 2606
    const-string p0, "<error>"

    return-object p0

    .line 2604
    :cond_0
    const-string p0, "turning off"

    return-object p0

    .line 2602
    :cond_1
    const-string p0, "on"

    return-object p0

    .line 2600
    :cond_2
    const-string p0, "turning on"

    return-object p0

    .line 2598
    :cond_3
    const-string p0, "off"

    return-object p0
.end method


# virtual methods
.method applyRouting(Z)V
    .locals 4

    .line 1696
    monitor-enter p0

    .line 1697
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1698
    monitor-exit p0

    return-void

    .line 1700
    :cond_0
    new-instance v0, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string v1, "applyRouting"

    const/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1701
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v1, :cond_2

    .line 1702
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 1704
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v1, :cond_2

    .line 1707
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 1712
    :cond_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1713
    const-string p1, "NfcService"

    const-string v0, "Not updating discovery parameters, tag connected."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1716
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 1720
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1722
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v1

    .line 1723
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 1732
    :cond_4
    const-string p1, "NfcService"

    const-string v1, "Discovery configuration equal, not updating."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1724
    :cond_5
    :goto_0
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1725
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result p1

    .line 1726
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2, v1, p1}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 1727
    goto :goto_1

    .line 1728
    :cond_6
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 1730
    :goto_1
    iput-object v1, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1735
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1736
    nop

    .line 1737
    monitor-exit p0

    .line 1738
    return-void

    .line 1735
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    throw p1

    .line 1737
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 1950
    const-string v0, "NfcService"

    const-string v1, "clear T3t Identifiers Cache"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->clearT3tIdentifiersCache()V

    .line 1952
    return-void
.end method

.method public commitRouting()V
    .locals 2

    .line 1959
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 1960
    return-void
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 1891
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object p1

    return-object p1
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 1899
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object p1

    return-object p1
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 1883
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object p1

    return-object p1
.end method

.method public deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1943
    const-string v0, "NfcService"

    const-string v1, "request to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 1946
    const/16 p2, 0xd

    invoke-virtual {p0, p2, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1947
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 2611
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2614
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " without permission "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2613
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    return-void

    .line 2619
    :cond_0
    monitor-enter p0

    .line 2620
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2624
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2625
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_1

    .line 2626
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2628
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2629
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 2630
    iget-object p2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {p2, p1}, Lcom/android/nfc/DeviceHost;->dump(Ljava/io/FileDescriptor;)V

    .line 2631
    monitor-exit p0

    .line 2632
    return-void

    .line 2631
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 9

    .line 799
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 800
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 801
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 802
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget v3, p0, Lcom/android/nfc/NfcService;->mUserId:I

    const/4 v4, 0x2

    const-string v5, "NfcService"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v2, v3, :cond_1

    .line 804
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/nfc/BeamShareActivity;

    .line 805
    invoke-virtual {v3}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v3

    const-class v8, Lcom/android/nfc/BeamShareActivity;

    .line 806
    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 804
    invoke-interface {v0, v2, v3}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    if-ne v1, v4, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v7

    .line 810
    :goto_0
    goto :goto_1

    .line 808
    :catch_0
    move-exception v2

    .line 809
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get Beam status for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_1
    :goto_1
    nop

    .line 813
    const-string v2, "no_outgoing_beam"

    invoke-virtual {p1, v2, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    move v6, v7

    .line 820
    :cond_2
    :try_start_1
    new-instance p1, Landroid/content/ComponentName;

    const-class v1, Lcom/android/nfc/BeamShareActivity;

    .line 821
    invoke-virtual {v1}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/nfc/BeamShareActivity;

    .line 822
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    if-eqz v6, :cond_3

    .line 824
    move v4, v7

    goto :goto_2

    .line 825
    :cond_3
    nop

    :goto_2
    nop

    .line 827
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 820
    invoke-interface {v0, p1, v4, v7, v1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 830
    goto :goto_3

    .line 828
    :catch_1
    move-exception p1

    .line 829
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to change Beam status for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :goto_3
    return-void
.end method

.method findAndRemoveObject(I)Ljava/lang/Object;
    .locals 2

    .line 1855
    monitor-enter p0

    .line 1856
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1857
    if-nez v0, :cond_0

    .line 1858
    const-string p1, "NfcService"

    const-string v1, "Handle not found"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1860
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1862
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1863
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method findObject(I)Ljava/lang/Object;
    .locals 2

    .line 1845
    monitor-enter p0

    .line 1846
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1847
    if-nez p1, :cond_0

    .line 1848
    const-string v0, "NfcService"

    const-string v1, "Handle not found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    :cond_0
    monitor-exit p0

    return-object p1

    .line 1851
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getLfT3tMax()I
    .locals 1

    .line 1955
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method public getNciVersion()I
    .locals 1

    .line 1920
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getNciVersion()I

    move-result v0

    return v0
.end method

.method declared-synchronized getUserId()I
    .locals 1

    monitor-enter p0

    .line 795
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .locals 4

    .line 529
    monitor-enter p0

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 532
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050002

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 533
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 534
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    .line 536
    :cond_0
    monitor-exit p0

    .line 537
    return-void

    .line 536
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabled()Z
    .locals 2

    .line 1636
    monitor-enter p0

    .line 1637
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 1638
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .locals 2

    .line 1630
    monitor-enter p0

    .line 1631
    :try_start_0
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 1632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method maybeDisconnectTarget()V
    .locals 5

    .line 1813
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1814
    return-void

    .line 1817
    :cond_0
    monitor-enter p0

    .line 1818
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 1821
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 1822
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1823
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1824
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 1826
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v4, :cond_1

    .line 1828
    check-cast v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1829
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    goto :goto_1

    .line 1830
    :cond_1
    instance-of v4, v3, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v4, :cond_2

    .line 1832
    check-cast v3, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 1833
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v4

    if-nez v4, :cond_3

    .line 1835
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_2

    .line 1830
    :cond_2
    :goto_1
    nop

    .line 1824
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1842
    :cond_4
    return-void

    .line 1823
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onHostCardEmulationActivated(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 312
    :cond_0
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData(I[B)V

    .line 319
    :cond_0
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 326
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 328
    :cond_0
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 352
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 353
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 336
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .locals 1

    .line 343
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 344
    return-void
.end method

.method public onNfcTransactionEvent([B[BLjava/lang/String;)V
    .locals 2

    .line 367
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 368
    const/16 p1, 0x11

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 369
    return-void
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 1

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 302
    return-void
.end method

.method public onRemoteFieldActivated()V
    .locals 2

    .line 357
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 358
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .locals 2

    .line 362
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 363
    return-void
.end method

.method public playSound(I)V
    .locals 8

    .line 770
    monitor-enter p0

    .line 771
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 772
    const-string p1, "NfcService"

    const-string v0, "Not playing sound when NFC is disabled"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    monitor-exit p0

    return-void

    .line 776
    :cond_0
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsVrModeEnabled:Z

    if-eqz v0, :cond_1

    .line 777
    const-string p1, "NfcService"

    const-string v0, "Not playing NFC sound when Vr Mode is enabled"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    monitor-exit p0

    return-void

    .line 780
    :cond_1
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 788
    :cond_2
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 786
    goto :goto_0

    .line 782
    :cond_4
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 783
    nop

    .line 791
    :goto_0
    monitor-exit p0

    .line 792
    return-void

    .line 791
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1936
    const-string v0, "NfcService"

    const-string v1, "request to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    .line 1939
    const/16 p2, 0xc

    invoke-virtual {p0, p2, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1940
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 2

    .line 1867
    monitor-enter p0

    .line 1868
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1869
    monitor-exit p0

    .line 1870
    return-void

    .line 1869
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method releaseSoundPool()V
    .locals 1

    .line 540
    monitor-enter p0

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 545
    :cond_0
    monitor-exit p0

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public routeAids(Ljava/lang/String;II)V
    .locals 2

    .line 1907
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1908
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1909
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1910
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1911
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1912
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1913
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .locals 2

    .line 762
    monitor-enter p0

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 764
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 765
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {p1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 766
    monitor-exit p0

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public sendData([B)Z
    .locals 1

    .line 1963
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result p1

    return p1
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 1

    .line 1967
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1968
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1969
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1970
    iget-object p1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1971
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .locals 1

    .line 1903
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1904
    return-void
.end method

.method unregisterObject(I)V
    .locals 1

    .line 1873
    monitor-enter p0

    .line 1874
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1875
    monitor-exit p0

    .line 1876
    return-void

    .line 1875
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .locals 1

    .line 1916
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 1917
    return-void
.end method

.method updatePackageCache()V
    .locals 4

    .line 549
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 550
    const-string v1, "android.permission.NFC_TRANSACTION_EVENT"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 553
    monitor-enter p0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 555
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 556
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    :cond_0
    monitor-exit p0

    .line 559
    return-void

    .line 558
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
