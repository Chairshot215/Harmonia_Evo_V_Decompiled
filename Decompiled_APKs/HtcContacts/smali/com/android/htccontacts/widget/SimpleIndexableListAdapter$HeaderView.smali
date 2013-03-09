.class public final Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;
.super Ljava/lang/Object;
.source "SimpleIndexableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeaderView"
.end annotation


# instance fields
.field public id:J

.field public isEnabled:Z

.field public isShow:Z

.field public name:Ljava/lang/String;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;)Z
    .locals 4
    .parameter "headerView"

    .prologue
    .line 73
    iget-wide v0, p1, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->id:J

    iget-wide v2, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 80
    instance-of v1, p1, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;

    .line 82
    .local v0, headerView:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;
    iget-wide v1, v0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->id:J

    iget-wide v3, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->id:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x1

    .line 86
    .end local v0           #headerView:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderView - id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->isEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter$HeaderView;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
