.class Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourcesObserver;
.super Landroid/database/DataSetObserver;
.source "DefaultSourceRanker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SourcesObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;


# direct methods
.method private constructor <init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourcesObserver;->this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourcesObserver;-><init>(Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker$SourcesObserver;->this$0:Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/DefaultSourceRanker;->clear()V

    .line 77
    return-void
.end method
