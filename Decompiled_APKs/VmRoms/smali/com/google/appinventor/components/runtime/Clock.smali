.class public final Lcom/google/appinventor/components/runtime/Clock;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->BASIC:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Non-visible component that provides the phone\'s clock, a timer, and time calculations."
    iconName = "images/clock.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_INTERVAL:I = 0x3e8


# instance fields
.field private onScreen:Z

.field private timerAlwaysFires:Z

.field private timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    new-instance v0, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v2, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    :cond_0
    return-void
.end method

.method public static AddDays(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some days after the argument"
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x5

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddHours(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some hours after the argument"
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/16 v0, 0xb

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddMinutes(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some minutes after the argument"
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddMonths(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some months after the argument"
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddSeconds(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some seconds after the argument"
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/16 v0, 0xd

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddWeeks(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some weeks after the argument"
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x3

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static AddYears(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some years after the argument"
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    return-object p0
.end method

.method public static DayOfMonth(Ljava/util/Calendar;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The day of the month"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Day(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static Duration(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Milliseconds between instants"
    .end annotation

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static FormatDate(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text describing the date of an instant"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDate(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static FormatDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text describing the date and time of an instant"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDateTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static FormatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text describing time time of an instant"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetMillis(Ljava/util/Calendar;)J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The instant in time measured as milliseconds since 1970."
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Hour(Ljava/util/Calendar;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The hour of the day"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Hour(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static MakeInstant(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant specified by MM/DD/YYYY hh:mm:ss or MM/DD/YYYY or hh:mm"
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->DateValue(Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v1, "Argument to MakeInstant should have form MM/DD/YYYY, hh:mm:ss, or MM/DD/YYYY or hh:mm"

    const-string v2, "Sorry to be so picky."

    invoke-direct {v0, v1, v2}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public static MakeInstantFromMillis(J)Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time specified by the milliseconds since 1970."
    .end annotation

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object v0
.end method

.method public static Minute(Ljava/util/Calendar;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The minute of the hour"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Minute(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static Month(Ljava/util/Calendar;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The month of the year, a number from 1 to 12)"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Month(Ljava/util/Calendar;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static MonthName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The name of the month"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->MonthName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Now()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The instant in time read from phone\'s clock"
    .end annotation

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static Second(Ljava/util/Calendar;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The second of the minute"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Second(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static SystemTime()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The phone\'s internal time"
    .end annotation

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Timer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Weekday(Ljava/util/Calendar;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The day of the week. a number from 1 (Sunday) to 7 (Saturday)"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Weekday(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The name of the day of the week"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Year(Ljava/util/Calendar;)I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The year"
    .end annotation

    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Year(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public Timer()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Timer has gone off."
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Timer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public TimerAlwaysFires(Z)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    return-void
.end method

.method public TimerAlwaysFires()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    return v0
.end method

.method public TimerEnabled(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method public TimerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public TimerInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public TimerInterval(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    return-void
.end method

.method public alarm()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Clock;->Timer()V

    return-void
.end method

.method public onDelete()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    return-void
.end method
