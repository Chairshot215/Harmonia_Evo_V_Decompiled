.class Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$1;
.super Ljava/lang/Object;
.source "SuggestionsPresenterImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$1;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestionsInternal()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->access$000(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;)V

    .line 55
    return-void
.end method
