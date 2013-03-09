.class Lcom/htc/android/mail/ComposeActivity$109;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 12977
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 12979
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12980
    .local v0, target:I
    packed-switch v0, :pswitch_data_0

    .line 12997
    :goto_0
    return-void

    .line 12982
    :pswitch_0
    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v1, v1, Lcom/htc/android/mail/ComposeActivity;->mShowAllToFlag:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_1
    iput-boolean v1, v4, Lcom/htc/android/mail/ComposeActivity;->mShowAllToFlag:Z

    .line 12983
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v2, v2, Lcom/htc/android/mail/ComposeActivity;->mShowAllToFlag:Z

    #calls: Lcom/htc/android/mail/ComposeActivity;->updateShowAllBtn(IZ)V
    invoke-static {v1, v3, v2}, Lcom/htc/android/mail/ComposeActivity;->access$14500(Lcom/htc/android/mail/ComposeActivity;IZ)V

    .line 12984
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphireUI(I)V
    invoke-static {v1, v3}, Lcom/htc/android/mail/ComposeActivity;->access$10700(Lcom/htc/android/mail/ComposeActivity;I)V

    goto :goto_0

    :cond_0
    move v1, v3

    .line 12982
    goto :goto_1

    .line 12987
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v4, v4, Lcom/htc/android/mail/ComposeActivity;->mShowAllCcFlag:Z

    if-nez v4, :cond_1

    move v3, v2

    :cond_1
    iput-boolean v3, v1, Lcom/htc/android/mail/ComposeActivity;->mShowAllCcFlag:Z

    .line 12988
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v3, v3, Lcom/htc/android/mail/ComposeActivity;->mShowAllCcFlag:Z

    #calls: Lcom/htc/android/mail/ComposeActivity;->updateShowAllBtn(IZ)V
    invoke-static {v1, v2, v3}, Lcom/htc/android/mail/ComposeActivity;->access$14500(Lcom/htc/android/mail/ComposeActivity;IZ)V

    .line 12989
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphireUI(I)V
    invoke-static {v1, v2}, Lcom/htc/android/mail/ComposeActivity;->access$10700(Lcom/htc/android/mail/ComposeActivity;I)V

    goto :goto_0

    .line 12992
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v4, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v4, v4, Lcom/htc/android/mail/ComposeActivity;->mShowAllBccFlag:Z

    if-nez v4, :cond_2

    :goto_2
    iput-boolean v2, v1, Lcom/htc/android/mail/ComposeActivity;->mShowAllBccFlag:Z

    .line 12993
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-boolean v2, v2, Lcom/htc/android/mail/ComposeActivity;->mShowAllBccFlag:Z

    #calls: Lcom/htc/android/mail/ComposeActivity;->updateShowAllBtn(IZ)V
    invoke-static {v1, v5, v2}, Lcom/htc/android/mail/ComposeActivity;->access$14500(Lcom/htc/android/mail/ComposeActivity;IZ)V

    .line 12994
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$109;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setMailSapphireUI(I)V
    invoke-static {v1, v5}, Lcom/htc/android/mail/ComposeActivity;->access$10700(Lcom/htc/android/mail/ComposeActivity;I)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 12992
    goto :goto_2

    .line 12980
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
