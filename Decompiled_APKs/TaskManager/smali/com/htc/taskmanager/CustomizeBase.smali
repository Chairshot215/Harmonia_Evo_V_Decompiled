.class public Lcom/htc/taskmanager/CustomizeBase;
.super Ljava/lang/Object;
.source "CustomizeBase.java"


# static fields
.field public static alternateKillButton:Z

.field public static bodyHasRoundCorners:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/taskmanager/CustomizeBase;->alternateKillButton:Z

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/taskmanager/CustomizeBase;->bodyHasRoundCorners:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static configureMainActivity(Lcom/htc/taskmanager/MainActivity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 52
    invoke-static {}, Lcom/htc/taskmanager/Customize;->getRefreshButtonId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 53
    .local v1, refreshButton:Landroid/widget/Button;
    if-eqz v1, :cond_0

    .line 55
    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 56
    new-instance v2, Lcom/htc/taskmanager/CustomizeBase$1;

    invoke-direct {v2, p0}, Lcom/htc/taskmanager/CustomizeBase$1;-><init>(Lcom/htc/taskmanager/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    invoke-static {}, Lcom/htc/taskmanager/Customize;->getKillAllButtontId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 65
    .local v0, killAllButton:Landroid/widget/Button;
    if-eqz v0, :cond_1

    .line 67
    const v2, 0x7f060006

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 68
    new-instance v2, Lcom/htc/taskmanager/CustomizeBase$2;

    invoke-direct {v2, p0}, Lcom/htc/taskmanager/CustomizeBase$2;-><init>(Lcom/htc/taskmanager/MainActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 77
    invoke-static {p0, v1, v0}, Lcom/htc/taskmanager/Customize;->skinCmdBarButtons(Lcom/htc/taskmanager/MainActivity;Landroid/view/View;Landroid/view/View;)V

    .line 78
    :cond_2
    return-void
.end method

.method public static customizeBottomListItem(Landroid/view/View;)V
    .locals 0
    .parameter "listItem"

    .prologue
    .line 100
    return-void
.end method

.method static invalidateMenu(Lcom/htc/taskmanager/MainActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 27
    return-void
.end method

.method static needToRemoveAndroidTitle()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method static processMenuCreate(Lcom/htc/taskmanager/MainActivity;Landroid/view/Menu;)V
    .locals 0
    .parameter "activity"
    .parameter "menu"

    .prologue
    .line 40
    return-void
.end method

.method static processMenuPrepare(Lcom/htc/taskmanager/MainActivity;Landroid/view/Menu;)V
    .locals 0
    .parameter "activity"
    .parameter "menu"

    .prologue
    .line 45
    return-void
.end method

.method public static updateFreeMemory(Lcom/htc/taskmanager/MainActivity;I)V
    .locals 5
    .parameter "activity"
    .parameter "freeMemory"

    .prologue
    .line 94
    const v1, 0x7f09000f

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method

.method public static updateTotalMemory(Lcom/htc/taskmanager/MainActivity;I)V
    .locals 5
    .parameter "activity"
    .parameter "totalMemory"

    .prologue
    .line 82
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-void
.end method

.method public static updateUsedMemory(Lcom/htc/taskmanager/MainActivity;I)V
    .locals 5
    .parameter "activity"
    .parameter "usedMemory"

    .prologue
    .line 88
    const v1, 0x7f09000d

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    .local v0, textView:Landroid/widget/TextView;
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/htc/taskmanager/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method
