.class public Lcom/google/android/voicesearch/DisambigDialog;
.super Landroid/app/Dialog;
.source "DisambigDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/voicesearch/DisambigDialog$Listener;,
        Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mHelpButton:Landroid/widget/Button;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;

.field private mMicButton:Landroid/widget/ImageButton;

.field private mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

.field private mSettings:Landroid/widget/ImageButton;

.field private mShowHelpButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    const v0, 0x7f0c0001

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mShowHelpButton:Z

    .line 66
    new-instance v0, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-direct {v0, p1}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/DisambigDialog;)Lcom/google/android/voicesearch/DisambigDialog$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;

    return-object v0
.end method

.method private filterResults(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 151
    .local v2, filterActionTypes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v6, 0xd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 157
    .local v4, seenActionTypes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v1, actionsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 160
    .local v0, action:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-virtual {v0}, Lcom/google/android/voicesearch/actions/VoiceAction;->getType()I

    move-result v5

    .line 161
    .local v5, type:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 163
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0           #action:Lcom/google/android/voicesearch/actions/VoiceAction;
    .end local v5           #type:I
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/voicesearch/actions/VoiceAction;

    .line 172
    .restart local v0       #action:Lcom/google/android/voicesearch/actions/VoiceAction;
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .end local v0           #action:Lcom/google/android/voicesearch/actions/VoiceAction;
    :cond_3
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DisambigDialog;->updateLayout()V

    .line 73
    const v0, 0x7f0e000a

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMicButton:Landroid/widget/ImageButton;

    .line 74
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mMicButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$1;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f0e000e

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$2;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$2;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0e000d

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mCancelButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$3;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$3;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0e000b

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mSettings:Landroid/widget/ImageButton;

    .line 104
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mSettings:Landroid/widget/ImageButton;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$4;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$4;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0e000c

    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    .line 114
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$5;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$5;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 193
    const v0, 0x7f0a07e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$6;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/DisambigDialog$6;-><init>(Lcom/google/android/voicesearch/DisambigDialog;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mShowHelpButton:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/voicesearch/DisambigDialog;->mHelpButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setDisambigListener(Lcom/google/android/voicesearch/DisambigDialog$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mListener:Lcom/google/android/voicesearch/DisambigDialog$Listener;

    .line 140
    return-void
.end method

.method public setShowHelpButton(Z)V
    .locals 0
    .parameter "showHelpButton"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mShowHelpButton:Z

    .line 136
    return-void
.end method

.method public update(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/actions/VoiceAction;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-direct {v1, p2}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    .line 180
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 186
    .local v0, resultsCopy:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/voicesearch/actions/VoiceAction;>;"
    invoke-direct {p0, v0}, Lcom/google/android/voicesearch/DisambigDialog;->filterResults(Ljava/util/List;)V

    .line 187
    iget-object v1, p0, Lcom/google/android/voicesearch/DisambigDialog;->mResultsAdapter:Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;

    invoke-virtual {v1, v0}, Lcom/google/android/voicesearch/DisambigDialog$ResultsAdapter;->setResults(Ljava/util/ArrayList;)V

    .line 188
    return-void
.end method

.method public updateLayout()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/voicesearch/DisambigDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/voicesearch/ui/WindowUtils;->setWindowSizeAndPosition(Landroid/view/Window;)V

    .line 207
    return-void
.end method
