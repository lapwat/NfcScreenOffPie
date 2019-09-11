.class Lcom/android/nfc/ScreenStateHelper;
.super Ljava/lang/Object;
.source "ScreenStateHelper.java"


# static fields
.field static final SCREEN_POLLING_P2P_MASK:I = 0x20

.field static final SCREEN_POLLING_READER_MASK:I = 0x40

.field static final SCREEN_POLLING_TAG_MASK:I = 0x10

.field static final SCREEN_STATE_OFF_LOCKED:I = 0x2

.field static final SCREEN_STATE_OFF_UNLOCKED:I = 0x1

.field static final SCREEN_STATE_ON_LOCKED:I = 0x4

.field static final SCREEN_STATE_ON_UNLOCKED:I = 0x8

.field static final SCREEN_STATE_UNKNOWN:I


# instance fields
.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    nop

    .line 28
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 29
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    .line 30
    return-void
.end method

.method static screenStateToString(I)Ljava/lang/String;
    .registers 2

    .line 51
    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x4

    if-eq p0, v0, :cond_13

    const/16 v0, 0x8

    if-eq p0, v0, :cond_10

    .line 61
    const-string p0, "UNKNOWN"

    return-object p0

    .line 57
    :cond_10
    const-string p0, "ON_UNLOCKED"

    return-object p0

    .line 55
    :cond_13
    const-string p0, "ON_LOCKED"

    return-object p0

    .line 53
    :cond_16
    const-string p0, "OFF_LOCKED"

    return-object p0

    .line 59
    :cond_19
    const-string p0, "OFF_UNLOCKED"

    return-object p0
.end method


# virtual methods
.method checkScreenState()I
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_14

    .line 35
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 36
    const/4 v0, 0x2

    return v0

    .line 38
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/ScreenStateHelper;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 41
    const/4 v0, 0x4

    return v0

    .line 43
    :cond_1e
    const/16 v0, 0x8

    return v0
.end method
