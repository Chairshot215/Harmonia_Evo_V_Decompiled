.class Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)V
    .locals 0
    .parameter

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;->this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;->this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    #getter for: Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->refresh_icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->access$2300(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;->this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    #getter for: Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->btnFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->access$2200(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;->this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    #getter for: Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I
    invoke-static {v2}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->access$2100(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1159
    iget-object v0, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;->this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    iget-object v1, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;->this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    #getter for: Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I
    invoke-static {v1}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->access$2100(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine$1;->this$1:Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;

    #getter for: Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mFrameNum:I
    invoke-static {v2}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->access$2400(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;)I

    move-result v2

    rem-int/2addr v1, v2

    #setter for: Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->mCurFrame:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;->access$2102(Lcom/htc/android/mail/MailList$RefreshAnimationRoutine;I)I

    .line 1160
    return-void
.end method
