.class Lcom/google/android/gm/MessageHeaderAttachment$1;
.super Landroid/content/AsyncQueryHandler;
.source "MessageHeaderAttachment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/MessageHeaderAttachment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/MessageHeaderAttachment;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MessageHeaderAttachment;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderAttachment$1;->this$0:Lcom/google/android/gm/MessageHeaderAttachment;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method
