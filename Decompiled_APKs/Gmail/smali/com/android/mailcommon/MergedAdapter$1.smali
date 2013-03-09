.class Lcom/android/mailcommon/MergedAdapter$1;
.super Landroid/database/DataSetObserver;
.source "MergedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mailcommon/MergedAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mailcommon/MergedAdapter;


# direct methods
.method constructor <init>(Lcom/android/mailcommon/MergedAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    .local p0, this:Lcom/android/mailcommon/MergedAdapter$1;,"Lcom/android/mailcommon/MergedAdapter.1;"
    iput-object p1, p0, Lcom/android/mailcommon/MergedAdapter$1;->this$0:Lcom/android/mailcommon/MergedAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 62
    .local p0, this:Lcom/android/mailcommon/MergedAdapter$1;,"Lcom/android/mailcommon/MergedAdapter.1;"
    iget-object v0, p0, Lcom/android/mailcommon/MergedAdapter$1;->this$0:Lcom/android/mailcommon/MergedAdapter;

    invoke-virtual {v0}, Lcom/android/mailcommon/MergedAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method
