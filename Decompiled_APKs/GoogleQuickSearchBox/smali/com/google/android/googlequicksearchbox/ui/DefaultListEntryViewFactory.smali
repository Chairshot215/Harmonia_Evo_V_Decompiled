.class public Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;
.super Ljava/lang/Object;
.source "DefaultListEntryViewFactory.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/ListEntryViewFactory;


# instance fields
.field private final mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mListEntryViewTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "inflater"
    .parameter "debugging"
    .parameter "resources"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    .line 54
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mListEntryViewTypes:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/Set;

    .line 57
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$ViewType;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/WebSearchSuggestionView$ViewType;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;)V

    .line 58
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$ViewType;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/LocalSuggestionView$ViewType;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;)V

    .line 59
    invoke-direct {p0, p3}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addSpecialViewTypes(Landroid/content/res/Resources;)V

    .line 60
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$ViewType;

    invoke-direct {v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$ViewType;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;)V

    .line 61
    return-void
.end method

.method private addSpecialViewTypes(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "resources"

    .prologue
    .line 64
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WEB:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v1, "separator_web"

    const v2, 0x7f04000f

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V

    .line 65
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_SUMMONS:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v1, "separator_summons"

    const v2, 0x7f04000e

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V

    .line 66
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_START_OF_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v1, "separator_start_of_group"

    const v2, 0x7f04000d

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_WITHIN_GROUP:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v1, "separator_within_group"

    const v2, 0x7f040010

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V

    .line 69
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->SEP_FIRST:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v1, "separator_first"

    const v2, 0x7f04000c

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V

    .line 70
    sget-object v0, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->DUMMY:Lcom/google/android/googlequicksearchbox/ui/ListEntry;

    const-string v1, "dummy"

    const/high16 v2, 0x7f04

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V

    .line 71
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;

    invoke-direct {v0, p1}, Lcom/google/android/googlequicksearchbox/ui/PlaceholderViewType;-><init>(Landroid/content/res/Resources;)V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;)V

    .line 72
    return-void
.end method

.method private addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Ljava/lang/String;I)V
    .locals 1
    .parameter "specificEntry"
    .parameter "viewTypeId"
    .parameter "layoutId"

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory$1;-><init>(Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;Ljava/lang/String;ILcom/google/android/googlequicksearchbox/ui/ListEntry;)V

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;)V

    .line 80
    return-void
.end method

.method private addViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;)V
    .locals 2
    .parameter "listEntryViewType"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mListEntryViewTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getViewType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method private getListEntryViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
    .locals 5
    .parameter "entry"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mListEntryViewTypes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;

    .line 116
    .local v1, listEntryViewType:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
    invoke-virtual {v1, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->canHandleEntry(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    .end local v1           #listEntryViewType:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
    :goto_0
    return-object v1

    .line 120
    :cond_1
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No view inflater for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 121
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "entry"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->getListEntryViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;

    move-result-object v0

    .line 98
    .local v0, viewType:Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;
    if-nez p2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getLayoutId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 100
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->inflatedListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V

    .line 104
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->prepareView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;Landroid/view/View;)V

    .line 106
    return-object p2

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mDebugging:Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;

    invoke-interface {v1, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;->recycledListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V

    goto :goto_0
.end method

.method public getViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Ljava/lang/String;
    .locals 1
    .parameter "entry"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->getListEntryViewType(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewType;->getViewType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/DefaultListEntryViewFactory;->mViewTypes:Ljava/util/Set;

    return-object v0
.end method
