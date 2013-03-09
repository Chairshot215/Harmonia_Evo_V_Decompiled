.class Lcom/google/android/gm/AttachmentComposeView;
.super Landroid/widget/LinearLayout;
.source "AttachmentComposeView.java"


# instance fields
.field private final mFilename:Ljava/lang/String;

.field private final mSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/provider/Gmail$Attachment;)V
    .locals 7
    .parameter "c"
    .parameter "attachment"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iget-object v1, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mFilename:Ljava/lang/String;

    .line 29
    iget v1, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    .line 31
    const-string v1, "Gmail"

    const-string v2, ">>>>> Attachment uri: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 32
    const-string v1, "Gmail"

    const-string v2, ">>>>>           type: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 35
    const-string v1, "Gmail"

    const-string v2, ">>>>>           name: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gm/AttachmentComposeView;->mFilename:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 36
    const-string v1, "Gmail"

    const-string v2, ">>>>>           size: %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gm/AttachmentComposeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 40
    .local v0, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f040006

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/gm/AttachmentComposeView;->populateAttachmentData(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private populateAttachmentData(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const v4, 0x7f0f0016

    .line 50
    const/high16 v0, 0x7f0f

    invoke-virtual {p0, v0}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-wide v0, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, v4}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-wide v1, p0, Lcom/google/android/gm/AttachmentComposeView;->mSize:J

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/AttachmentUtils;->convertToHumanReadableSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public addDeleteListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 45
    const v1, 0x7f0f0017

    invoke-virtual {p0, v1}, Lcom/google/android/gm/AttachmentComposeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .local v0, deleteButton:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method
