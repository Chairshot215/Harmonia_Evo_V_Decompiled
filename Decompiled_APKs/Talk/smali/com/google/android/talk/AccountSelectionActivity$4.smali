.class Lcom/google/android/talk/AccountSelectionActivity$4;
.super Ljava/lang/Object;
.source "AccountSelectionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountSelectionActivity;->registerForConnectionStateChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountSelectionActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountSelectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/google/android/talk/AccountSelectionActivity$4;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/google/android/talk/AccountSelectionActivity$4;->this$0:Lcom/google/android/talk/AccountSelectionActivity;

    #calls: Lcom/google/android/talk/AccountSelectionActivity;->registerForConnectionStateChanges()V
    invoke-static {v0}, Lcom/google/android/talk/AccountSelectionActivity;->access$1300(Lcom/google/android/talk/AccountSelectionActivity;)V

    .line 841
    return-void
.end method
