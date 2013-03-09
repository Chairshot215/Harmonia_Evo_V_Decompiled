.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field static final PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "/"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/content/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    const/4 v9, 0x0

    if-gez p3, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "code "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is invalid: it must be positive"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    if-eqz p2, :cond_3

    sget-object v10, Landroid/content/UriMatcher;->PATH_SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_4

    array-length v6, v8

    :goto_1
    move-object v4, p0

    const/4 v2, -0x1

    :goto_2
    if-ge v2, v6, :cond_9

    if-gez v2, :cond_5

    move-object v7, p1

    :goto_3
    iget-object v1, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriMatcher;

    iget-object v10, v0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v4, v0

    :cond_1
    if-ne v3, v5, :cond_2

    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0}, Landroid/content/UriMatcher;-><init>()V

    const-string v10, "#"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    iput v10, v0, Landroid/content/UriMatcher;->mWhich:I

    :goto_5
    iput-object v7, v0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    :cond_4
    move v6, v9

    goto :goto_1

    :cond_5
    aget-object v7, v8, v2

    goto :goto_3

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const-string v10, "*"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x2

    iput v10, v0, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    :cond_8
    iput v9, v0, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    :cond_9
    iput p3, v4, Landroid/content/UriMatcher;->mCode:I

    return-void
.end method

.method public match(Landroid/net/Uri;)I
    .locals 13

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    move-object v9, p0

    if-nez v4, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_0

    iget v12, p0, Landroid/content/UriMatcher;->mCode:I

    :goto_0
    return v12

    :cond_0
    const/4 v1, -0x1

    :goto_1
    if-ge v1, v4, :cond_1

    if-gez v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v11

    :goto_2
    iget-object v5, v9, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    :cond_1
    iget v12, v9, Landroid/content/UriMatcher;->mCode:I

    goto :goto_0

    :cond_2
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object v11, v12

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v6, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    iget v12, v8, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v12, :pswitch_data_0

    :cond_4
    :goto_4
    if-eqz v9, :cond_7

    :cond_5
    if-nez v9, :cond_8

    const/4 v12, -0x1

    goto :goto_0

    :pswitch_0
    iget-object v12, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v9, v8

    goto :goto_4

    :pswitch_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v7, :cond_6

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move-object v9, v8

    goto :goto_4

    :pswitch_2
    move-object v9, v8

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
