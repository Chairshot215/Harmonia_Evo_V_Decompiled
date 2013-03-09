.class Lcom/htc/android/mail/ComposeActivity$95;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->initMeetingWidget()V
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
    .line 11783
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$95;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 11785
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$95;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #calls: Lcom/htc/android/mail/ComposeActivity;->checkCalendar()V
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$12500(Lcom/htc/android/mail/ComposeActivity;)V

    .line 11786
    return-void
.end method
