.class Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask$1;
.super Ljava/lang/Object;
.source "EmojiDataManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;


# direct methods
.method constructor <init>(Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask$1;->this$1:Ljp/co/canonits/android/emojidatamanager/EmojiDataManager$CopyTask;

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method
