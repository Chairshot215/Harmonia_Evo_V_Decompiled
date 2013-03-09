.class Lcom/google/android/gm/GmailAnimatedAdapter$2;
.super Ljava/lang/Object;
.source "GmailAnimatedAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/GmailAnimatedAdapter;->updateNearbyWindow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/GmailAnimatedAdapter;

.field final synthetic val$cursorPosition:I


# direct methods
.method constructor <init>(Lcom/google/android/gm/GmailAnimatedAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gm/GmailAnimatedAdapter$2;->this$0:Lcom/google/android/gm/GmailAnimatedAdapter;

    iput p2, p0, Lcom/google/android/gm/GmailAnimatedAdapter$2;->val$cursorPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/gm/GmailAnimatedAdapter$2;->this$0:Lcom/google/android/gm/GmailAnimatedAdapter;

    iget v1, p0, Lcom/google/android/gm/GmailAnimatedAdapter$2;->val$cursorPosition:I

    #calls: Lcom/google/android/gm/GmailAnimatedAdapter;->updateNearbyWindowInternal(I)V
    invoke-static {v0, v1}, Lcom/google/android/gm/GmailAnimatedAdapter;->access$100(Lcom/google/android/gm/GmailAnimatedAdapter;I)V

    .line 80
    return-void
.end method
