.class public Lcom/android/calendarcommon/ICalendar$Property;
.super Ljava/lang/Object;
.source "ICalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendarcommon/ICalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field public static final DTEND:Ljava/lang/String; = "DTEND"

.field public static final DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final DURATION:Ljava/lang/String; = "DURATION"

.field public static final EXDATE:Ljava/lang/String; = "EXDATE"

.field public static final EXRULE:Ljava/lang/String; = "EXRULE"

.field public static final RDATE:Ljava/lang/String; = "RDATE"

.field public static final RRULE:Ljava/lang/String; = "RRULE"


# instance fields
.field private final mName:Ljava/lang/String;

.field private mParamsMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendarcommon/ICalendar$Parameter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/calendarcommon/ICalendar$Property;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/calendarcommon/ICalendar$Property;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/calendarcommon/ICalendar$Property;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V
    .locals 3

    iget-object v1, p0, Lcom/android/calendarcommon/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/android/calendarcommon/ICalendar$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/calendarcommon/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/android/calendarcommon/ICalendar$Parameter;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;
    .locals 2

    iget-object v1, p0, Lcom/android/calendarcommon/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Parameter;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendarcommon/ICalendar$Property;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendarcommon/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/calendarcommon/ICalendar$Parameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/calendarcommon/ICalendar$Property;->mParamsMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/calendarcommon/ICalendar$Property;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/calendarcommon/ICalendar$Property;->mValue:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/calendarcommon/ICalendar$Property;->toString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 6

    iget-object v5, p0, Lcom/android/calendarcommon/ICalendar$Property;->mName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getParameterNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/calendarcommon/ICalendar$Property;->getParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Lcom/android/calendarcommon/ICalendar$Parameter;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    const-string v5, ":"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/calendarcommon/ICalendar$Property;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
