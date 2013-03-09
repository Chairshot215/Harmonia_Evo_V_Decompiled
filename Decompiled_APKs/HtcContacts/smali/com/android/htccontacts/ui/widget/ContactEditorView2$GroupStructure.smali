.class public Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
.super Ljava/lang/Object;
.source "ContactEditorView2.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ui/widget/ContactEditorView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupStructure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
        ">;"
    }
.end annotation


# instance fields
.field public GroupIsReadOnly:I

.field public GroupOrder:I

.field public GroupTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "title"
    .parameter "groupIsReadOnly"

    .prologue
    .line 199
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;II)V

    .line 200
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "title"
    .parameter "groupIsReadOnly"
    .parameter "order"

    .prologue
    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    .line 195
    iput p2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    .line 196
    iput p3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupOrder:I

    .line 197
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 192
    check-cast p1, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->compareTo(Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 211
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 212
    check-cast v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .line 213
    .local v0, compareObject:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    iget-object v2, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    if-ne v2, v3, :cond_1

    .line 214
    const/4 v1, 0x1

    .line 221
    .end local v0           #compareObject:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    :cond_0
    :goto_0
    return v1

    .line 215
    .restart local v0       #compareObject:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    :cond_1
    iget-object v2, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 218
    iget-object v1, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 226
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 227
    .local v0, code:I
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 230
    :cond_0
    return v0
.end method
