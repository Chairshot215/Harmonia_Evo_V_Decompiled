.class Lcom/htc/android/mail/ComposeActivity$60;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 7927
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$60;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v6, 0x0

    .line 7929
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$60;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, v3, Lcom/htc/android/mail/ComposeActivity;->addAttendees:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$60;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, v3, Lcom/htc/android/mail/ComposeActivity;->addAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7930
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "ComposeActivity"

    const-string v4, "addAttendee null"

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7949
    :cond_1
    :goto_0
    return-void

    .line 7933
    :cond_2
    const/4 v0, 0x0

    .line 7934
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$60;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, v3, Lcom/htc/android/mail/ComposeActivity;->addAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/calendar/Attendee;

    .line 7935
    .local v2, item:Lcom/htc/util/calendar/Attendee;
    if-nez v0, :cond_3

    .line 7936
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #builder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7940
    .restart local v0       #builder:Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v2}, Lcom/htc/util/calendar/Attendee;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7938
    :cond_3
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7942
    .end local v2           #item:Lcom/htc/util/calendar/Attendee;
    :cond_4
    if-eqz v0, :cond_5

    .line 7943
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$60;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/ComposeActivity$60;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v5, v5, Lcom/htc/android/mail/ComposeActivity;->receiverList:Landroid/widget/LinearLayout;

    #calls: Lcom/htc/android/mail/ComposeActivity;->setReceiver(Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V
    invoke-static {v3, v4, v5, v6, v6}, Lcom/htc/android/mail/ComposeActivity;->access$4600(Lcom/htc/android/mail/ComposeActivity;Ljava/lang/String;Landroid/widget/LinearLayout;ZI)V

    .line 7944
    invoke-static {}, Lcom/htc/android/mail/ComposeActivity;->access$1600()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "ComposeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAttendee: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7948
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/ComposeActivity$60;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v3, v3, Lcom/htc/android/mail/ComposeActivity;->addAttendees:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
