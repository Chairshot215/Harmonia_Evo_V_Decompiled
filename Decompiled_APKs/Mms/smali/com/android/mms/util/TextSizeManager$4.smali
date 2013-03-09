.class Lcom/android/mms/util/TextSizeManager$4;
.super Ljava/lang/Thread;
.source "TextSizeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/TextSizeManager;->setPinchLevel(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/TextSizeManager;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/android/mms/util/TextSizeManager;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/android/mms/util/TextSizeManager$4;->this$0:Lcom/android/mms/util/TextSizeManager;

    iput p2, p0, Lcom/android/mms/util/TextSizeManager$4;->val$level:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/mms/util/TextSizeManager$4;->this$0:Lcom/android/mms/util/TextSizeManager;

    #getter for: Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/mms/util/TextSizeManager;->access$000(Lcom/android/mms/util/TextSizeManager;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 303
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/mms/util/TextSizeManager;->access$400()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/util/TextSizeManager$4;->val$level:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 304
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    return-void
.end method
