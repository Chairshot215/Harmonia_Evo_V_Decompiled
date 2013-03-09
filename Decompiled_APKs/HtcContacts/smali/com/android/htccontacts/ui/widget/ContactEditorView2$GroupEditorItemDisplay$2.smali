.class Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$2;
.super Ljava/lang/Object;
.source "ContactEditorView2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;->obtainDisplayStringDelayed(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/ui/widget/DelayStringCallback;)Ljava/lang/String;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;)V
    .locals 0
    .parameter

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$2;->this$0:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1272
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupEditorItemDisplay$2;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 1274
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
