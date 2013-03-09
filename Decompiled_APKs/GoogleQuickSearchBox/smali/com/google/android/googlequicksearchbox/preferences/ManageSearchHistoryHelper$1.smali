.class Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$1;
.super Ljava/lang/Object;
.source "ManageSearchHistoryHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;-><init>(Landroid/content/Context;Lcom/google/android/googlequicksearchbox/Config;Lcom/google/android/googlequicksearchbox/google/gaia/LoginHelper;Lcom/google/android/googlequicksearchbox/google/SearchUrlHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper$1;->this$0:Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;

    #calls: Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->cancelled()V
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;->access$000(Lcom/google/android/googlequicksearchbox/preferences/ManageSearchHistoryHelper;)V

    .line 65
    return-void
.end method
