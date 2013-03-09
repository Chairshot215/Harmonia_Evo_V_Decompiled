.class public Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;
.super Ljava/lang/Object;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoSubstitute"
.end annotation


# instance fields
.field private OriginalWord:Ljava/lang/String;

.field private active:Z

.field final synthetic this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;


# direct methods
.method public constructor <init>(Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 6048
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->this$1:Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 6060
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->active:Z

    .line 6061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->OriginalWord:Ljava/lang/String;

    .line 6062
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 6074
    iget-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->active:Z

    return v0
.end method

.method public rollBack(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "defString"

    .prologue
    .line 6066
    iget-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->active:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->OriginalWord:Ljava/lang/String;

    .line 6067
    .local v0, ret:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->active:Z

    .line 6068
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->OriginalWord:Ljava/lang/String;

    .line 6069
    return-object v0

    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .line 6066
    goto :goto_0
.end method

.method public save(Ljava/lang/String;)V
    .locals 1
    .parameter "orgWord"

    .prologue
    .line 6054
    iput-object p1, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->OriginalWord:Ljava/lang/String;

    .line 6055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/XT9IME/XT9IME$HTCIMEInfo$AutoSubstitute;->active:Z

    .line 6056
    return-void
.end method
