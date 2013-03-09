.class Lcom/android/systemui/Nyandroid$1;
.super Ljava/lang/Object;
.source "Nyandroid.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/Nyandroid;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/Nyandroid;


# direct methods
.method constructor <init>(Lcom/android/systemui/Nyandroid;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/Nyandroid$1;->this$0:Lcom/android/systemui/Nyandroid;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/Nyandroid$1;->this$0:Lcom/android/systemui/Nyandroid;

    invoke-virtual {v0}, Lcom/android/systemui/Nyandroid;->finish()V

    :cond_0
    return-void
.end method
