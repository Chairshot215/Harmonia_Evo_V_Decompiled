.class Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "FMPresetBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field mPresetCols:[Ljava/lang/String;

.field final synthetic this$1:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;Landroid/content/ContentResolver;)V
    .locals 3
    .parameter
    .parameter "res"

    .prologue
    .line 744
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;->this$1:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    .line 745
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 748
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "composer"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "is_music"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_size"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;->mPresetCols:[Ljava/lang/String;

    .line 746
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 756
    const-string v0, "@@@"

    const-string v1, "query complete"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;->this$1:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->getCursor4NewMode(Landroid/database/Cursor;)Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->access$1100(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p3

    .line 758
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;->this$1:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->access$1200(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;)Lcom/htc/fm/FMPresetBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/fm/FMPresetBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 759
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter$QueryHandler;->this$1:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    #getter for: Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->mActivity:Lcom/htc/fm/FMPresetBrowserActivity;
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->access$1200(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;)Lcom/htc/fm/FMPresetBrowserActivity;

    move-result-object v0

    #calls: Lcom/htc/fm/FMPresetBrowserActivity;->setTitle()V
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity;->access$1300(Lcom/htc/fm/FMPresetBrowserActivity;)V

    .line 760
    return-void
.end method
