.class Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;
.super Ljava/lang/Object;
.source "SuggestionsPresenterImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestionsInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/googlequicksearchbox/Source;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

.field final synthetic val$normalizedQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;->val$normalizedQuery:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 271
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;->consume(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public consume(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/Source;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, sourcesToQuery:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/googlequicksearchbox/Source;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;->this$0:Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl$5;->val$normalizedQuery:Ljava/lang/String;

    #calls: Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->updateSuggestionsInternal(Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;->access$300(Lcom/google/android/googlequicksearchbox/SuggestionsPresenterImpl;Ljava/lang/String;Ljava/util/List;)V

    .line 276
    const/4 v0, 0x1

    return v0
.end method
