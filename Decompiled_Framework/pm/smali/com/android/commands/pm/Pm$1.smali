.class Lcom/android/commands/pm/Pm$1;
.super Ljava/lang/Object;
.source "Pm.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/pm/Pm;->runListFeatures()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/FeatureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0

    iput-object p1, p0, Lcom/android/commands/pm/Pm$1;->this$0:Lcom/android/commands/pm/Pm;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I
    .locals 2

    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/content/pm/FeatureInfo;

    check-cast p2, Landroid/content/pm/FeatureInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/commands/pm/Pm$1;->compare(Landroid/content/pm/FeatureInfo;Landroid/content/pm/FeatureInfo;)I

    move-result v0

    return v0
.end method
