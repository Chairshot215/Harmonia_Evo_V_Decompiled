.class Lcom/android/mms/ui/MessageListAdapter$1;
.super Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter$1;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Lcom/android/mms/util/VCardSaveIndicatorCache$VCardIndicatorObeserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter$1;->this$0:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 195
    return-void
.end method
