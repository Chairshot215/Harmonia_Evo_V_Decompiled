.class Lcom/google/android/googlequicksearchbox/SearchActivity$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$1;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$1;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    #calls: Lcom/google/android/googlequicksearchbox/SearchActivity;->initializeDelayed()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SearchActivity;->access$000(Lcom/google/android/googlequicksearchbox/SearchActivity;)V

    .line 110
    return-void
.end method
