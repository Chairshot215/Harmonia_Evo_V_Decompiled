.class Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "SyncStateCheckBoxPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

.field final synthetic val$anim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference$1;->this$0:Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference;

    iput-object p2, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference$1;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/android/mail/widget/SyncStateCheckBoxPreference$1;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 75
    return-void
.end method
