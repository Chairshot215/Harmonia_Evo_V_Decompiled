.class public Lcom/htc/android/mail/ContactGroupDialogPicker;
.super Landroid/app/Activity;
.source "ContactGroupDialogPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ContactGroupDialogPicker$1;,
        Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;
    }
.end annotation


# instance fields
.field private mDecodedGroupName:[Ljava/lang/CharSequence;

.field private mLoadContactGroupTask:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

.field private mSelectedGroupIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mLoadContactGroupTask:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mSelectedGroupIndex:I

    .line 44
    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/mail/ContactGroupDialogPicker;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mDecodedGroupName:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/mail/ContactGroupDialogPicker;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mDecodedGroupName:[Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/android/mail/ContactGroupDialogPicker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mSelectedGroupIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/android/mail/ContactGroupDialogPicker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mSelectedGroupIndex:I

    return p1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 28
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 30
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p0}, Lcom/htc/android/mail/ContactGroupDialogPicker;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 33
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "contactGroup"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, contactGroup:Ljava/lang/String;
    new-instance v3, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;-><init>(Lcom/htc/android/mail/ContactGroupDialogPicker;Lcom/htc/android/mail/ContactGroupDialogPicker$1;)V

    iput-object v3, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mLoadContactGroupTask:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    .line 35
    iget-object v3, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mLoadContactGroupTask:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    new-array v4, v6, [Ljava/lang/String;

    aput-object v1, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 41
    iget-object v0, p0, Lcom/htc/android/mail/ContactGroupDialogPicker;->mLoadContactGroupTask:Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ContactGroupDialogPicker$LoadContactGroupTask;->cancel(Z)Z

    .line 42
    return-void
.end method
