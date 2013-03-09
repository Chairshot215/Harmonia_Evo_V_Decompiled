.class Lcom/htc/home/personalize/AddAdapter$7;
.super Ljava/lang/Object;
.source "AddAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/AddAdapter;->addShortcutItems()V
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
        "Lcom/htc/home/personalize/AddAdapter$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/AddAdapter;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/AddAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/htc/home/personalize/AddAdapter$7;->this$0:Lcom/htc/home/personalize/AddAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/htc/home/personalize/AddAdapter$ListItem;Lcom/htc/home/personalize/AddAdapter$ListItem;)I
    .locals 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 1063
    iget v0, p1, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    iget v1, p2, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    if-ge v0, v1, :cond_0

    .line 1064
    const/4 v0, -0x1

    .line 1068
    :goto_0
    return v0

    .line 1065
    :cond_0
    iget v0, p1, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    iget v1, p2, Lcom/htc/home/personalize/AddAdapter$ListItem;->priority:I

    if-le v0, v1, :cond_1

    .line 1066
    const/4 v0, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/util/Utilities;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/htc/home/personalize/AddAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1061
    check-cast p1, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .end local p1
    check-cast p2, Lcom/htc/home/personalize/AddAdapter$ListItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/home/personalize/AddAdapter$7;->compare(Lcom/htc/home/personalize/AddAdapter$ListItem;Lcom/htc/home/personalize/AddAdapter$ListItem;)I

    move-result v0

    return v0
.end method
