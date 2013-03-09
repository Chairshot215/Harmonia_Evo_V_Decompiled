.class public Lcom/htc/android/htcime/tools/VibratorTest;
.super Landroid/app/ListActivity;
.source "VibratorTest.java"


# static fields
.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final MENU_DOUBLE_VIRBRATE:I = 0x3ea

.field private static final MENU_SINGLE_VIRBRATE:I = 0x3e9

.field private static mVibrator:Landroid/os/Vibrator;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mVibrateMode:I

.field private mVibrateValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mAdapter:Landroid/widget/ListAdapter;

    .line 39
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateMode:I

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateValue:I

    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/tools/VibratorTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateValue:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/tools/VibratorTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateMode:I

    return v0
.end method

.method static synthetic access$200()Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private getData()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v2, myData:Ljava/util/List;,"Ljava/util/List<Ljava/util/HashMap;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v1, map:Ljava/util/HashMap;
    const-string v3, "id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v3, "title"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v1           #map:Ljava/util/HashMap;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onContentChanged()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 60
    iget-object v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/htc/android/htcime/tools/VibratorTest$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/tools/VibratorTest$1;-><init>(Lcom/htc/android/htcime/tools/VibratorTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x2

    .line 44
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/VibratorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    .line 49
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/htc/android/htcime/tools/VibratorTest;->getData()Ljava/util/List;

    move-result-object v2

    const v3, 0x1090004

    new-array v4, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "value"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mAdapter:Landroid/widget/ListAdapter;

    .line 53
    iget-object v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/tools/VibratorTest;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    return-void

    .line 49
    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 100
    const/16 v0, 0x3e9

    const-string v1, "Single Vibrate"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 101
    const/16 v0, 0x3ea

    const-string v1, "Double Vibrate"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 89
    if-gez p3, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    long-to-int v0, p4

    iput v0, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateValue:I

    .line 93
    sget-object v0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateValue:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 109
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 119
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 111
    :pswitch_0
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateMode:I

    goto :goto_0

    .line 114
    :pswitch_1
    const/16 v1, 0x3ea

    iput v1, p0, Lcom/htc/android/htcime/tools/VibratorTest;->mVibrateMode:I

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
