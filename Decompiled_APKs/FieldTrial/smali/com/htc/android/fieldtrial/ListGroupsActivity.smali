.class public Lcom/htc/android/fieldtrial/ListGroupsActivity;
.super Landroid/app/ListActivity;
.source "ListGroupsActivity.java"


# static fields
.field private static final ACTIVITY_LIST_ITEMS:I = 0x1

.field private static final DIALOG_SELECT_SAMPLE_RATE:I = 0x1

.field public static final GROUP:Ljava/lang/String; = "group"

.field private static final LOG_TAG:Ljava/lang/String; = "ListGroupsActivity"

.field private static mSettingGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/fieldtrial/SettingGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

.field private static selectedSampleRate:Lcom/htc/android/fieldtrial/SampleRate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/Utility;->getSampleRates()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fieldtrial/SampleRate;

    sput-object v0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->mSettingGroups:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/htc/android/fieldtrial/SampleRate;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->selectedSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/android/fieldtrial/SampleRate;)Lcom/htc/android/fieldtrial/SampleRate;
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-object p0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->selectedSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object p0
.end method

.method static synthetic access$100()Lcom/htc/android/fieldtrial/SampleRate;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/android/fieldtrial/SampleRate;)Lcom/htc/android/fieldtrial/SampleRate;
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-object p0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    return-object p0
.end method

.method static synthetic access$200(Lcom/htc/android/fieldtrial/ListGroupsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->setRightTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static changeSampleRate(Lcom/htc/android/fieldtrial/SampleRate;)V
    .locals 0
    .parameter "changed"

    .prologue
    .line 166
    sput-object p0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    .line 167
    return-void
.end method

.method private getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/fieldtrial/Utility;->getGroupTitles()Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/htc/android/fieldtrial/ListGroupsActivity;->mSettingGroups:Ljava/util/List;

    .line 76
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/htc/android/fieldtrial/ListGroupsActivity;->mSettingGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 77
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v3, title:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "group"

    sget-object v4, Lcom/htc/android/fieldtrial/ListGroupsActivity;->mSettingGroups:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/fieldtrial/SettingGroup;

    invoke-virtual {v4}, Lcom/htc/android/fieldtrial/SettingGroup;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v2           #i:I
    .end local v3           #title:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "ListGroupsActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method

.method private setRightTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 170
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, rightText:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method private startItemListActivity(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/fieldtrial/ListItemsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 98
    const-string v2, "group"

    sget-object v1, Lcom/htc/android/fieldtrial/ListGroupsActivity;->mSettingGroups:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    sget-object v1, Lcom/htc/android/fieldtrial/ListGroupsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    invoke-static {v1}, Lcom/htc/android/fieldtrial/ListItemsActivity;->changeSampleRate(Lcom/htc/android/fieldtrial/SampleRate;)V

    .line 101
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->getData()Ljava/util/List;

    move-result-object v2

    const v3, 0x1090003

    new-array v4, v8, [Ljava/lang/String;

    const-string v1, "group"

    aput-object v1, v4, v9

    new-array v5, v8, [I

    const v1, 0x1020014

    aput v1, v5, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 56
    .local v6, actionBar:Landroid/app/ActionBar;
    const/high16 v0, 0x7f02

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 57
    invoke-virtual {v6, v8}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 58
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 61
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 62
    .local v7, leftText:Landroid/widget/TextView;
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    .line 127
    packed-switch p1, :pswitch_data_0

    .line 157
    const/4 v5, 0x0

    :goto_0
    return-object v5

    .line 129
    :pswitch_0
    invoke-static {}, Lcom/htc/android/fieldtrial/Utility;->getSingleton()Lcom/htc/android/fieldtrial/Utility;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/fieldtrial/Utility;->getSampleRates()Ljava/util/List;

    move-result-object v3

    .line 130
    .local v3, sampleRates:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/fieldtrial/SampleRate;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, options:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 132
    .local v4, selectedIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 133
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/fieldtrial/SampleRate;

    invoke-virtual {v5}, Lcom/htc/android/fieldtrial/SampleRate;->getName()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, option:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/fieldtrial/SampleRate;

    sget-object v6, Lcom/htc/android/fieldtrial/ListGroupsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    invoke-virtual {v5, v6}, Lcom/htc/android/fieldtrial/SampleRate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 136
    move v4, v0

    .line 132
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 139
    .end local v1           #option:Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1080027

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f050005

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v6

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/htc/android/fieldtrial/ListGroupsActivity$2;

    invoke-direct {v7, p0, v3}, Lcom/htc/android/fieldtrial/ListGroupsActivity$2;-><init>(Lcom/htc/android/fieldtrial/ListGroupsActivity;Ljava/util/List;)V

    invoke-virtual {v6, v5, v4, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/htc/android/fieldtrial/ListGroupsActivity$1;

    invoke-direct {v7, p0}, Lcom/htc/android/fieldtrial/ListGroupsActivity$1;-><init>(Lcom/htc/android/fieldtrial/ListGroupsActivity;)V

    invoke-virtual {v5, v6, v7}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 107
    invoke-virtual {p0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 108
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 110
    const/4 v1, 0x1

    return v1
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 91
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 92
    invoke-direct {p0, p3}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->startItemListActivity(I)V

    .line 93
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 116
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 122
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 118
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->showDialog(I)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x7f070009
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 68
    sget-object v0, Lcom/htc/android/fieldtrial/ListGroupsActivity;->sSampleRate:Lcom/htc/android/fieldtrial/SampleRate;

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/SampleRate;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->setRightTitle(Ljava/lang/String;)V

    .line 69
    return-void
.end method
