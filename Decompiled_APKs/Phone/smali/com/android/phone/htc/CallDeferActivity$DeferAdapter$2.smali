.class Lcom/android/phone/htc/CallDeferActivity$DeferAdapter$2;
.super Ljava/lang/Object;
.source "CallDeferActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->bindReminder(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;


# direct methods
.method constructor <init>(Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter$2;->this$1:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter$2;->this$1:Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;

    iget-object v0, v0, Lcom/android/phone/htc/CallDeferActivity$DeferAdapter;->this$0:Lcom/android/phone/htc/CallDeferActivity;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/phone/htc/CallDeferActivity;->showDialog(I)V

    .line 694
    return-void
.end method
