.class public abstract Lgnu/kawa/models/Display;
.super Ljava/lang/Object;
.source "Display.java"


# static fields
.field public static myDisplay:Lgnu/mapping/ThreadLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lgnu/mapping/ThreadLocation;

    const-string v1, "my-display"

    invoke-direct {v0, v1}, Lgnu/mapping/ThreadLocation;-><init>(Ljava/lang/String;)V

    sput-object v0, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asDimension(Ljava/awt/geom/Dimension2D;)Ljava/awt/Dimension;
    .locals 6
    .parameter "dim"

    .prologue
    const-wide/high16 v4, 0x3fe0

    .line 84
    instance-of v0, p0, Ljava/awt/Dimension;

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 85
    :cond_0
    check-cast p0, Ljava/awt/Dimension;

    .end local p0
    move-object v0, p0

    .line 87
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    new-instance v0, Ljava/awt/Dimension;

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v1

    add-double/2addr v1, v4

    double-to-int v1, v1

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    add-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Ljava/awt/Dimension;-><init>(II)V

    goto :goto_0
.end method

.method public static getInstance()Lgnu/kawa/models/Display;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 18
    sget-object v8, Lgnu/kawa/models/Display;->myDisplay:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v8, v9}, Lgnu/mapping/ThreadLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 19
    .local v2, d:Ljava/lang/Object;
    instance-of v8, v2, Lgnu/kawa/models/Display;

    if-eqz v8, :cond_0

    .line 20
    check-cast v2, Lgnu/kawa/models/Display;

    .end local v2           #d:Ljava/lang/Object;
    move-object v8, v2

    .line 45
    :goto_0
    return-object v8

    .line 21
    .restart local v2       #d:Ljava/lang/Object;
    :cond_0
    if-nez v2, :cond_3

    const-string v8, "swing"

    move-object v5, v8

    .line 22
    .local v5, name:Ljava/lang/String;
    :goto_1
    new-array v6, v10, [Ljava/lang/Class;

    .line 25
    .local v6, noClasses:[Ljava/lang/Class;
    :goto_2
    const/16 v8, 0x2c

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 26
    .local v1, comma:I
    const/4 v7, 0x0

    .line 27
    .local v7, rest:Ljava/lang/String;
    if-ltz v1, :cond_1

    .line 29
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 30
    invoke-virtual {v5, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 33
    :cond_1
    const-string v8, "swing"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 34
    const-string v5, "gnu.kawa.swingviews.SwingDisplay"

    .line 42
    :cond_2
    :goto_3
    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, clas:Ljava/lang/Class;
    const-string v8, "getInstance"

    invoke-virtual {v0, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 45
    .local v4, method:Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clas:Ljava/lang/Class;
    check-cast v0, Lgnu/kawa/models/Display;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v8, v0

    goto :goto_0

    .line 21
    .end local v1           #comma:I
    .end local v4           #method:Ljava/lang/reflect/Method;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #noClasses:[Ljava/lang/Class;
    .end local v7           #rest:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_1

    .line 35
    .restart local v1       #comma:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #noClasses:[Ljava/lang/Class;
    .restart local v7       #rest:Ljava/lang/String;
    :cond_4
    const-string v8, "swt"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 36
    const-string v5, "gnu.kawa.swtviews.SwtDisplay"

    goto :goto_3

    .line 37
    :cond_5
    const-string v8, "echo2"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 38
    const-string v5, "gnu.kawa.echo2.Echo2Display"

    goto :goto_3

    .line 47
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 49
    .local v3, ex:Ljava/lang/ClassNotFoundException;
    if-nez v7, :cond_6

    .line 50
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "no display toolkit: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 51
    :cond_6
    move-object v5, v7

    .line 56
    goto :goto_2

    .line 53
    .end local v3           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 55
    .local v3, ex:Ljava/lang/Throwable;
    invoke-static {v3}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
.end method


# virtual methods
.method public abstract addBox(Lgnu/kawa/models/Box;Ljava/lang/Object;)V
.end method

.method public abstract addButton(Lgnu/kawa/models/Button;Ljava/lang/Object;)V
.end method

.method public abstract addImage(Lgnu/kawa/models/DrawImage;Ljava/lang/Object;)V
.end method

.method public abstract addLabel(Lgnu/kawa/models/Label;Ljava/lang/Object;)V
.end method

.method public addSpacer(Lgnu/kawa/models/Spacer;Ljava/lang/Object;)V
    .locals 2
    .parameter "model"
    .parameter "where"

    .prologue
    .line 75
    new-instance v0, Ljava/lang/Error;

    const-string v1, "makeView called on Spacer"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addText(Lgnu/kawa/models/Text;Ljava/lang/Object;)V
    .locals 2
    .parameter "model"
    .parameter "where"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Error;

    const-string v1, "makeView called on Text"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract addView(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public coerceToModel(Ljava/lang/Object;)Lgnu/kawa/models/Model;
    .locals 2
    .parameter "component"

    .prologue
    .line 93
    instance-of v0, p1, Lgnu/lists/FString;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Lgnu/kawa/models/Label;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/kawa/models/Label;-><init>(Ljava/lang/String;)V

    .line 95
    .end local p1
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    check-cast p1, Lgnu/kawa/models/Model;

    .end local p1
    move-object v0, p1

    goto :goto_0
.end method

.method public abstract makeWindow()Lgnu/kawa/models/Window;
.end method
