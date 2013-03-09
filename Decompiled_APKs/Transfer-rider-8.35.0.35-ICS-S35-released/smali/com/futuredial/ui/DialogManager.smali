.class public Lcom/futuredial/ui/DialogManager;
.super Ljava/lang/Object;
.source "DialogManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/futuredial/ui/DialogManager$Builder;
    }
.end annotation


# static fields
.field static TAG:Ljava/lang/String;

.field static m_dialogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    .line 18
    const-string v0, "DMIDialogManager"

    sput-object v0, Lcom/futuredial/ui/DialogManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static reg_dialog(Landroid/app/Dialog;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 26
    sget-object v0, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/futuredial/ui/DialogManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reg dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v0, Lcom/futuredial/ui/DialogManager$1;

    invoke-direct {v0}, Lcom/futuredial/ui/DialogManager$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method public dismissAll(Z)V
    .locals 3
    .parameter "bClear"

    .prologue
    .line 45
    sget-object v1, Lcom/futuredial/ui/DialogManager;->TAG:Ljava/lang/String;

    const-string v2, "remove all"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 47
    sget-object v1, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    if-eqz p1, :cond_1

    .line 49
    sget-object v1, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 50
    :cond_1
    return-void
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public showAll()V
    .locals 4

    .prologue
    .line 53
    sget-object v1, Lcom/futuredial/ui/DialogManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAll,m_dialogs.size(),"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 55
    sget-object v1, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    return-void
.end method

.method public unreg_dialog(Landroid/app/Dialog;)V
    .locals 3
    .parameter "d"

    .prologue
    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 61
    sget-object v2, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 62
    .local v0, dd:Landroid/app/Dialog;
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 65
    sget-object v2, Lcom/futuredial/ui/DialogManager;->m_dialogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    .end local v0           #dd:Landroid/app/Dialog;
    :cond_0
    return-void

    .line 59
    .restart local v0       #dd:Landroid/app/Dialog;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
