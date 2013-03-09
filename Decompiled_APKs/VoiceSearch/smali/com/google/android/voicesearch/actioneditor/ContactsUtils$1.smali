.class final Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->sortForType([Lcom/google/android/voicesearch/actions/Contact;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/voicesearch/actions/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/voicesearch/actions/Contact;Lcom/google/android/voicesearch/actions/Contact;)I
    .locals 5
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 144
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 145
    .local v0, result:I
    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getType()I

    move-result v1

    .line 148
    .local v1, t1:I
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/Contact;->getType()I

    move-result v2

    .line 149
    .local v2, t2:I
    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-eq v2, v3, :cond_1

    .line 150
    const/4 v0, -0x1

    .line 156
    .end local v0           #result:I
    .end local v1           #t1:I
    .end local v2           #t2:I
    :cond_0
    :goto_0
    return v0

    .line 152
    .restart local v0       #result:I
    .restart local v1       #t1:I
    .restart local v2       #t2:I
    :cond_1
    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-ne v2, v3, :cond_0

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-eq v1, v3, :cond_0

    .line 153
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    check-cast p1, Lcom/google/android/voicesearch/actions/Contact;

    .end local p1
    check-cast p2, Lcom/google/android/voicesearch/actions/Contact;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->compare(Lcom/google/android/voicesearch/actions/Contact;Lcom/google/android/voicesearch/actions/Contact;)I

    move-result v0

    return v0
.end method
