.class Lcom/android/mms/view/impl/NotificationViewImpl$2;
.super Ljava/lang/Object;
.source "NotificationViewImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/view/impl/NotificationViewImpl;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/NotificationViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/NotificationViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/mms/view/impl/NotificationViewImpl$2;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/mms/view/impl/NotificationViewImpl$2;->this$0:Lcom/android/mms/view/impl/NotificationViewImpl;

    sget-object v1, Lcom/android/mms/view/Event;->CLICKED_DECLINE:Lcom/android/mms/view/Event;

    invoke-virtual {v0, v1}, Lcom/android/mms/view/impl/NotificationViewImpl;->fireEvent(Lcom/android/mms/view/Event;)V

    .line 111
    return-void
.end method
