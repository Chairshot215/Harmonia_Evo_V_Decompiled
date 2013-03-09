.class Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;
.super Ljava/lang/Object;
.source "SyncStateCheckBoxPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartAnimation"
.end annotation


# instance fields
.field mAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field final synthetic this$0:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .parameter
    .parameter "anim"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;->this$0:Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 30
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SyncStateCheckBoxPreference$StartAnimation;->mAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 33
    return-void
.end method
