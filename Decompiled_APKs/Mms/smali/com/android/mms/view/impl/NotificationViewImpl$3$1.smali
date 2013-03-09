.class Lcom/android/mms/view/impl/NotificationViewImpl$3$1;
.super Ljava/lang/Object;
.source "NotificationViewImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/NotificationViewImpl$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/view/impl/NotificationViewImpl$3;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/NotificationViewImpl$3;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/view/impl/NotificationViewImpl$3$1;->this$1:Lcom/android/mms/view/impl/NotificationViewImpl$3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl$3$1;->this$1:Lcom/android/mms/view/impl/NotificationViewImpl$3;

    iget-object v0, v0, Lcom/android/mms/view/impl/NotificationViewImpl$3;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    #calls: Lcom/android/mms/view/impl/NotificationViewImpl;->downloadMmsData()V
    invoke-static {v0}, Lcom/android/mms/view/impl/NotificationViewImpl;->access$100(Lcom/android/mms/view/impl/NotificationViewImpl;)V

    .line 231
    return-void
.end method
