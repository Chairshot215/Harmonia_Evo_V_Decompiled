.class Lcom/htc/fm/FMPresetBrowserActivity$AddButtonClickListener;
.super Ljava/lang/Object;
.source "FMPresetBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMPresetBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AddButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMPresetBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMPresetBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/htc/fm/FMPresetBrowserActivity$AddButtonClickListener;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/fm/FMPresetBrowserActivity$AddButtonClickListener;->this$0:Lcom/htc/fm/FMPresetBrowserActivity;

    iget-object v0, v0, Lcom/htc/fm/FMPresetBrowserActivity;->mAdapter:Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;

    #calls: Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->goToNewPreset()V
    invoke-static {v0}, Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;->access$000(Lcom/htc/fm/FMPresetBrowserActivity$PresetCursorAdapter;)V

    .line 190
    return-void
.end method
