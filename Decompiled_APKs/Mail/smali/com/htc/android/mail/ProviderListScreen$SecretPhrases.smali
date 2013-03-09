.class Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;
.super Ljava/lang/Object;
.source "ProviderListScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ProviderListScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SecretPhrases"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;
    }
.end annotation


# static fields
.field private static mClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static mEnabled:[Z

.field private static mSecretPhrases:[[I


# instance fields
.field private mActivity:Lcom/htc/android/mail/ProviderListScreen;

.field private mSecretPharses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 488
    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mEnabled:[Z

    .line 489
    new-array v0, v2, [[I

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mSecretPhrases:[[I

    .line 495
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Lcom/htc/android/mail/DebugActivity;

    aput-object v1, v0, v3

    const-class v1, Lcom/htc/android/mail/activity/HuxServerSettingSwitchActivity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mClasses:[Ljava/lang/Class;

    return-void

    .line 488
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 489
    nop

    :array_1
    .array-data 0x4
        0x21t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x32t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/htc/android/mail/ProviderListScreen;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 498
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mSecretPharses:Ljava/util/ArrayList;

    .line 499
    iput-object p1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mActivity:Lcom/htc/android/mail/ProviderListScreen;

    .line 500
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mSecretPhrases:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 501
    iget-object v1, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mSecretPharses:Ljava/util/ArrayList;

    new-instance v2, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;

    sget-object v3, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mSecretPhrases:[[I

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;-><init>([I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndStart(I)V
    .locals 7
    .parameter "keyCode"

    .prologue
    .line 506
    iget-object v3, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mSecretPharses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 507
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 508
    iget-object v3, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mSecretPharses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;

    .line 509
    .local v1, secretPharse:Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;
    if-nez v1, :cond_1

    .line 507
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {v1, p1}, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;->check(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    sget-object v3, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mEnabled:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mActivity:Lcom/htc/android/mail/ProviderListScreen;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mActivity:Lcom/htc/android/mail/ProviderListScreen;

    sget-object v6, Lcom/htc/android/mail/ProviderListScreen$SecretPhrases;->mClasses:[Ljava/lang/Class;

    aget-object v6, v6, v0

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ProviderListScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 516
    .end local v1           #secretPharse:Lcom/htc/android/mail/ProviderListScreen$SecretPhrases$SecretPharse;
    :cond_2
    return-void
.end method
