.class Lcom/android/mms/view/impl/TextMessageViewImpl$5;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$5;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$5;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/view/impl/TextMessageViewImpl;->setPressed(Z)V

    .line 1091
    return-void
.end method
