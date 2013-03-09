.class Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnlargeKeyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;
    }
.end annotation


# instance fields
.field SIP_key_corec:I

.field SIP_key_orign:I

.field cache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;

.field final synthetic this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME;)V
    .locals 1
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->this$0:Lcom/htc/android/htcime/XT9IME/XT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;-><init>(Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;)V

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->cache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;

    .line 841
    return-void
.end method


# virtual methods
.method reset()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 835
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_orign:I

    .line 836
    iput v2, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->SIP_key_corec:I

    .line 837
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->cache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;->cand_cnt:I

    .line 838
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo;->cache:Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;

    iput v2, v0, Lcom/htc/android/htcime/XT9IME/XT9IME$EnlargeKeyInfo$EnlargeKeyCache;->engSug_Idx:I

    .line 839
    return-void
.end method
