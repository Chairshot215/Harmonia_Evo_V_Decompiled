.class Lcom/android/systemui/Nyandroid$Board$2;
.super Ljava/lang/Object;
.source "Nyandroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/Nyandroid$Board;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/Nyandroid$Board;

.field final synthetic val$anim:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/Nyandroid$Board;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/Nyandroid$Board$2;->this$0:Lcom/android/systemui/Nyandroid$Board;

    iput-object p2, p0, Lcom/android/systemui/Nyandroid$Board$2;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/Nyandroid$Board$2;->val$anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
