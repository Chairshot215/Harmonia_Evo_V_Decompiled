.class Lcom/google/android/finsky/layout/BadgeSection$1;
.super Ljava/lang/Object;
.source "BadgeSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/BadgeSection;->createPrimaryBadgeRow()Lcom/google/android/finsky/layout/BadgeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/BadgeSection;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/BadgeSection;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/finsky/layout/BadgeSection$1;->this$0:Lcom/google/android/finsky/layout/BadgeSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/finsky/layout/BadgeSection$1;->this$0:Lcom/google/android/finsky/layout/BadgeSection;

    #calls: Lcom/google/android/finsky/layout/BadgeSection;->expand()V
    invoke-static {v0}, Lcom/google/android/finsky/layout/BadgeSection;->access$000(Lcom/google/android/finsky/layout/BadgeSection;)V

    .line 136
    return-void
.end method
