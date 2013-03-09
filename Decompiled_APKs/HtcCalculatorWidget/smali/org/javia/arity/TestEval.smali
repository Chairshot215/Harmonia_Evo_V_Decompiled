.class Lorg/javia/arity/TestEval;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static cases:[Lorg/javia/arity/EvalCase;

.field static casesComplex:[Lorg/javia/arity/EvalCase;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 38
    const/16 v0, 0x72

    new-array v0, v0, [Lorg/javia/arity/EvalCase;

    const/4 v1, 0x0

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "."

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+."

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "\u03c0"

    const-wide v4, 0x400921fb54442d18L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "2\u00d73"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+\u221a9*2"

    const-wide/high16 v4, 0x401c

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "3\u221a 4"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "\u221a16sin(2\u03c0/4)"

    const-wide/high16 v4, 0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+1"

    const-wide/high16 v4, 0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+-1"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-0.5"

    const-wide/high16 v4, -0x4020

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "+1e2"

    const-wide/high16 v4, 0x4059

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1e-1"

    const-wide v4, 0x3fb999999999999aL

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1e\u22122"

    const-wide v4, 0x3f847ae147ae147bL

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-2^3!"

    const-wide/high16 v4, -0x3fb0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "(-2)^3!"

    const-wide/high16 v4, 0x4050

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-2^1^2"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "--1"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-3^--2"

    const-wide/high16 v4, -0x3fde

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+2)(2+3"

    const-wide/high16 v4, 0x402e

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1+2)!^-2"

    const-wide v4, 0x3f9c71c71c71c71cL

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin(0)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "cos(0)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin(-1--1)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-(2+1)*-(4/2)"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-.5E-1"

    const-wide v4, -0x4056666666666666L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1E1.5"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "2 3 4"

    const-wide/high16 v4, 0x4038

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "pi"

    const-wide v4, 0x400921fb54442d18L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "e"

    const-wide v4, 0x4005bf0a8b145769L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin(pi/2)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f=sin(2x)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(pi/2)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "a=3"

    const-wide/high16 v4, 0x4008

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "b=a+1"

    const-wide/high16 v4, 0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(x, y) = x*(y+1)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "="

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(a, b-a)"

    const-wide/high16 v4, 0x4018

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, " f(a pi/4)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f (  1  +  1  , a+1)"

    const-wide/high16 v4, 0x4024

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "g(foo) = f (f(foo, 1)pi/2)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "g(.5*2)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "NaN"

    const-wide/high16 v4, 0x7ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "Inf"

    const-wide/high16 v4, 0x7ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "Infinity"

    const-wide/high16 v4, 0x7ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "-Inf"

    const-wide/high16 v4, -0x10

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0/0"

    const-wide/high16 v4, 0x7ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "comb(11, 9)"

    const-wide v4, 0x404b800000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "perm(11, 2)"

    const-wide v4, 0x405b800000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "comb(1000, 999)"

    const-wide v4, 0x408f400000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "perm(1000, 1)"

    const-wide v4, 0x408f400000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(x)=1+x^2"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(3-1)"

    const-wide/high16 v4, 0x4014

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "abs(3-4i)"

    const-wide/high16 v4, 0x4014

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "exp(pi*i)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "5%"

    const-wide v4, 0x3fa999999999999aL

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "200+5%"

    const-wide v4, 0x406a400000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "200-5%"

    const-wide v4, 0x4067c00000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "100/200%"

    const-wide/high16 v4, 0x4049

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "100+200%+5%"

    const-wide v4, 0x4073b00000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "p1(x)=200+5%+x"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "p1(0)"

    const-wide v4, 0x406a400000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "p2(x,y)=x+y%+(2*y)%"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "p2(200,5)"

    const-wide v4, 0x406ce00000000000L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "mod(5,3)"

    const-wide/high16 v4, 0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "5.2 # 3.2"

    const-wide/high16 v4, 0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(x)=3"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "g(x)=f(x)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "g(1)"

    const-wide/high16 v4, 0x4008

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "a(x)=i+x-x"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "b(x)=a(x)*a(x)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "b(5)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "h(x)=sqrt(-1+x-x)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "k(x)=h(x)*h(x)"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "k(5)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "pi=4"

    const-wide/high16 v4, 0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "pi"

    const-wide v4, 0x400921fb54442d18L

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "fc(x)=e^(i*x^2"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "fc(0)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "aa(x)=sin(x)^1+sin(x)^0"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "aa(0)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "null(x)=0"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "n(x)=null(sin(x))"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "n(1)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "(2,"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "100.1-100-.1"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "1.1-1+(-.1)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "log(2,8)"

    const-wide/high16 v4, 0x4008

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "log(9,81)"

    const-wide/high16 v4, 0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "log(4,2)"

    const-wide/high16 v4, 0x3fe0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin\'(0)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "cos\'(0)"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "cos\'(pi/2)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f(x)=2*x^3+x^2+100"

    const-wide/high16 v4, -0x3ff8

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f\'(1)"

    const-wide/high16 v4, 0x4020

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "f\'(2)"

    const-wide/high16 v4, 0x403c

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "abs\'(2)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "abs\'(-3)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0x0"

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0x100"

    const-wide/high16 v4, 0x4070

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0X10"

    const-wide/high16 v4, 0x4030

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0b10"

    const-wide/high16 v4, 0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0o10"

    const-wide/high16 v4, 0x4020

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0o8"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0xg"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "0b20"

    const-wide/high16 v4, -0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sin(0x1*pi/2)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "ln(e)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "log(10)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "log10(100)"

    const-wide/high16 v4, 0x4000

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "lg(.1)"

    const-wide/high16 v4, -0x4010

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "log2(2)"

    const-wide/high16 v4, 0x3ff0

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "lb(256)"

    const-wide/high16 v4, 0x4020

    invoke-direct {v2, v3, v4, v5}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;D)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    .line 169
    const/16 v0, 0xb

    new-array v0, v0, [Lorg/javia/arity/EvalCase;

    const/4 v1, 0x0

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sqrt(-1)^2"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, -0x4010

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "i"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "sqrt(-1)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(2+0i)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x4014

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "c(1+i)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x4000

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "ln(-1)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/16 v5, 0x0

    const-wide v7, -0x3ff6de04abbbd2e8L

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "i^i"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide v5, 0x3fca9bcc46f767e0L

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "gcd(135-14i, 155+34i)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x4028

    const-wide/high16 v7, -0x3fec

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "comb(1+.5i, 1)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x3fe0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "perm(2+i, 2)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide/high16 v5, 0x3ff0

    const-wide/high16 v7, 0x4008

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/javia/arity/EvalCase;

    const-string v3, "fc(2)"

    new-instance v4, Lorg/javia/arity/Complex;

    const-wide v5, -0x401b1559f924db3fL

    const-wide v7, -0x4017c8462223e152L

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-direct {v2, v3, v4}, Lorg/javia/arity/EvalCase;-><init>(Ljava/lang/String;Lorg/javia/arity/Complex;)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static testEval()Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v1, 0x1

    .line 187
    new-instance v10, Lorg/javia/arity/Symbols;

    invoke-direct {v10}, Lorg/javia/arity/Symbols;-><init>()V

    .line 188
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 189
    sget-object v2, Lorg/javia/arity/TestEval;->cases:[Lorg/javia/arity/EvalCase;

    aget-object v11, v2, v0

    .line 191
    const/4 v4, 0x1

    .line 193
    const-wide/16 v6, 0x0

    .line 194
    :try_start_0
    new-instance v2, Lorg/javia/arity/Complex;

    invoke-direct {v2}, Lorg/javia/arity/Complex;-><init>()V

    .line 196
    iget-object v3, v11, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v10, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    .line 197
    iget-object v5, v3, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    .line 198
    invoke-virtual {v10, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 199
    invoke-virtual {v5}, Lorg/javia/arity/Function;->arity()I

    move-result v3

    if-nez v3, :cond_3

    .line 200
    invoke-virtual {v5}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v3

    .line 201
    invoke-virtual {v5}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object v12

    .line 202
    invoke-static {v3, v4, v12}, Lorg/javia/arity/UnitTest;->equal(DLorg/javia/arity/Complex;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v9, 0x1

    .line 203
    :goto_1
    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v5

    .line 205
    iget-object v8, v11, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-static {v8}, Lorg/javia/arity/Symbols;->isDefinition(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 206
    iget-object v2, v11, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lorg/javia/arity/Symbols;->eval(Ljava/lang/String;)D

    move-result-wide v7

    .line 207
    iget-object v2, v11, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lorg/javia/arity/Symbols;->evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;

    move-result-object v6

    .line 208
    if-eqz v9, :cond_2

    invoke-static {v3, v4, v7, v8}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v12, v6}, Lorg/javia/arity/Complex;->equals(Lorg/javia/arity/Complex;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 211
    :goto_2
    if-nez v2, :cond_a

    .line 212
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "**** failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-wide v15, v3

    move-object v3, v5

    move-wide v4, v15

    .line 218
    :goto_3
    if-eqz v2, :cond_4

    iget-wide v6, v11, Lorg/javia/arity/EvalCase;->result:D

    invoke-static {v6, v7, v4, v5}, Lorg/javia/arity/UnitTest;->equal(DD)Z
    :try_end_0
    .catch Lorg/javia/arity/SyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    .line 223
    :goto_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_6

    const-string v4, ""

    :goto_5
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v11, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "                                           "

    const/4 v7, 0x0

    iget-object v8, v11, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    rsub-int/lit8 v8, v8, 0xf

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    if-nez v2, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 202
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 208
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 215
    :cond_3
    const-wide/high16 v2, -0x3ff8

    .line 216
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/javia/arity/SyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    move-wide v15, v2

    move v2, v4

    move-object v3, v5

    move-wide v4, v15

    goto :goto_3

    .line 218
    :cond_4
    const/4 v2, 0x0

    goto :goto_4

    .line 219
    :catch_0
    move-exception v2

    .line 220
    invoke-virtual {v2}, Lorg/javia/arity/SyntaxException;->toString()Ljava/lang/String;

    move-result-object v3

    .line 221
    iget-wide v4, v11, Lorg/javia/arity/EvalCase;->result:D

    const-wide/high16 v6, -0x4000

    cmpl-double v2, v4, v6

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 223
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed (expected "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v11, Lorg/javia/arity/EvalCase;->result:D

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "): "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 232
    :cond_7
    const/4 v0, 0x0

    :goto_6
    sget-object v2, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    array-length v2, v2

    if-ge v0, v2, :cond_9

    .line 234
    :try_start_2
    sget-object v2, Lorg/javia/arity/TestEval;->casesComplex:[Lorg/javia/arity/EvalCase;

    aget-object v2, v2, v0

    .line 235
    iget-object v3, v2, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v10, v3}, Lorg/javia/arity/Symbols;->evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;

    move-result-object v3

    .line 236
    iget-object v4, v2, Lorg/javia/arity/EvalCase;->cResult:Lorg/javia/arity/Complex;

    invoke-static {v4, v3}, Lorg/javia/arity/UnitTest;->equal(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 237
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " expected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lorg/javia/arity/EvalCase;->cResult:Lorg/javia/arity/Complex;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " got "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    .line 232
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 241
    :cond_8
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lorg/javia/arity/EvalCase;->expr:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v5, 0x28

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/javia/arity/SyntaxException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 243
    :catch_1
    move-exception v2

    goto :goto_7

    .line 246
    :cond_9
    return v1

    :cond_a
    move-wide v15, v3

    move-object v3, v5

    move-wide v4, v15

    goto/16 :goto_3

    :cond_b
    move-object v15, v2

    move v2, v9

    move-wide/from16 v16, v6

    move-wide/from16 v7, v16

    move-object v6, v15

    goto/16 :goto_2
.end method
