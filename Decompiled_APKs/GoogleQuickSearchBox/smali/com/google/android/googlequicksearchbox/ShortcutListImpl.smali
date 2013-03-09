.class public Lcom/google/android/googlequicksearchbox/ShortcutListImpl;
.super Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;
.source "ShortcutListImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ShortcutList;


# static fields
.field public static final SHORTCUT_SOURCE_NAME:Ljava/lang/String; = "shortcut"


# instance fields
.field private final mRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

.field private final mShortcutRepo:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

.field private final mUiThread:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/ShortcutRefresher;Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;Ljava/lang/Iterable;)V
    .locals 3
    .parameter "query"
    .parameter "uiThread"
    .parameter "refresher"
    .parameter "repository"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Handler;",
            "Lcom/google/android/googlequicksearchbox/ShortcutRefresher;",
            "Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p5, initialContents:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Lcom/google/android/googlequicksearchbox/Suggestion;>;"
    const-string v2, "shortcut"

    invoke-direct {p0, v2, p1}, Lcom/google/android/googlequicksearchbox/MutableSuggestionListImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mUiThread:Landroid/os/Handler;

    .line 45
    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    .line 46
    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mShortcutRepo:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    .line 47
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/googlequicksearchbox/Suggestion;

    .line 48
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {p0, v1}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->add(Lcom/google/android/googlequicksearchbox/Suggestion;)Z

    goto :goto_0

    .line 50
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/googlequicksearchbox/ShortcutListImpl;)Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mShortcutRepo:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepository;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/ShortcutListImpl;Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->refresh(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/googlequicksearchbox/ShortcutListImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mUiThread:Landroid/os/Handler;

    return-object v0
.end method

.method private refresh(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 3
    .parameter "source"
    .parameter "shortcutId"
    .parameter "refreshed"

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 85
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->get(I)Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v1

    .line 86
    .local v1, s:Lcom/google/android/googlequicksearchbox/Suggestion;
    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getShortcutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {p0, v0, p3}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->replace(ILcom/google/android/googlequicksearchbox/Suggestion;)V

    .line 97
    .end local v1           #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_0
    :goto_1
    return-void

    .line 92
    .restart local v1       #s:Lcom/google/android/googlequicksearchbox/Suggestion;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->remove(I)V

    goto :goto_1

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public refresh(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .locals 2
    .parameter "shortcut"

    .prologue
    .line 59
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getSuggestionSource()Lcom/google/android/googlequicksearchbox/Source;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ShortcutListImpl;->mRefresher:Lcom/google/android/googlequicksearchbox/ShortcutRefresher;

    new-instance v1, Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1;

    invoke-direct {v1, p0}, Lcom/google/android/googlequicksearchbox/ShortcutListImpl$1;-><init>(Lcom/google/android/googlequicksearchbox/ShortcutListImpl;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/googlequicksearchbox/ShortcutRefresher;->refresh(Lcom/google/android/googlequicksearchbox/Suggestion;Lcom/google/android/googlequicksearchbox/ShortcutRefresher$Listener;)V

    goto :goto_0
.end method
