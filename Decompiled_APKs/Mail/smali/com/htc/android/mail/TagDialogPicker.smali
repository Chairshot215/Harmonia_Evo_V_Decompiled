.class public Lcom/htc/android/mail/TagDialogPicker;
.super Landroid/app/Activity;
.source "TagDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/TagDialogPicker$1;,
        Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;
    }
.end annotation


# instance fields
.field private mLoadTagsTask:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

.field private mOriginalTagId:J

.field private mOriginalTagIndex:I

.field private mTagIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTagNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mLoadTagsTask:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mTagIdList:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mTagNameList:Ljava/util/ArrayList;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagId:J

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mTagIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/mail/TagDialogPicker;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mTagNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/mail/TagDialogPicker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagId:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/TagDialogPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/htc/android/mail/TagDialogPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagIndex:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/htc/android/mail/TagDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 36
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 38
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/htc/android/mail/TagDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p0}, Lcom/htc/android/mail/TagDialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "tagId"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/android/mail/TagDialogPicker;->mOriginalTagId:J

    .line 43
    new-instance v2, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;-><init>(Lcom/htc/android/mail/TagDialogPicker;Lcom/htc/android/mail/TagDialogPicker$1;)V

    iput-object v2, p0, Lcom/htc/android/mail/TagDialogPicker;->mLoadTagsTask:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    .line 44
    iget-object v2, p0, Lcom/htc/android/mail/TagDialogPicker;->mLoadTagsTask:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    new-array v3, v5, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 45
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 50
    iget-object v0, p0, Lcom/htc/android/mail/TagDialogPicker;->mLoadTagsTask:Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/TagDialogPicker$LoadTagsTask;->cancel(Z)Z

    .line 51
    return-void
.end method
